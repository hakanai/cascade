class Video < Post
  body_attr_accessor :video_site, :video_id

  validates_presence_of :video_site, :video_id
  validates_inclusion_of :video_site, :in => [ 'youtube', 'googlevideo' ], :message => 'unknown video site'

  # TODO: Probably should validate the video ID for each video site.
end
