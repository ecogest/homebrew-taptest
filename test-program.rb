# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TestProgram < Formula
  desc ""
  homepage ""
  url "https://github.com/ecogest/test-program/archive/v1.0.tar.gz"
  sha256 "3f05c8c623047795c50bf85dc80c3265bf2047f72a7b5c8078b88dee83cd98ca"
  license ""

  # depends_on "cmake" => :build
  bottle do
    root_url "https://homebrew.bintray.com/bottles-taptest"
    cellar :any_skip_relocation
    sha256 "d5b7401bc7ee377187a09c6b0314be4d195d8647778d8f5a7e612172c6c192e7" => :big_sur
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "hello"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test test-program`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
