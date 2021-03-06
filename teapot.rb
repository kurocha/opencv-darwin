
#
#  This file is part of the "Teapot" project, and is released under the MIT license.
#

teapot_version "1.0"

define_target "opencv-linux" do |target|
	target.provides 'Platform/opencv/linux' do
		append linkflags [
			"-framework", "OpenCL"
		]
	end
	
	target.provides :opencv_platform => 'Platform/opencv/linux'
end