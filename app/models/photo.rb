class Photo < ActiveRecord::Base
  belongs_to :area
  belongs_to :situation
  validate :file_invalid?

  #写真アップロード用
  def upfile=(upfile)
    self.datatype = upfile.content_type
    self.data = upfile.read
  end

  private
  def file_invalid?
    ps = ['image/jpeg', 'image/gif', 'image/png']
    errors.add(:data, 'は画像ファイルではありません') if !ps.include?(self.datatype)
    errors.add(:data, 'のサイズが2MBを超えています') if self.data.length > 2.megabyte
  end
end
