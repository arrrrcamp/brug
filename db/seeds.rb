Member.delete_all

%w[hannesfostie joren jeroen_j rkh tenderlove dhh ev zhann holman qrush coreyhaines kytrinyx junkiesxl phoet rodreegez atog philnash ryanstenhouse mediafinger floordrees teabass mislav avdi].each { |username| Member.create_from_username username }
