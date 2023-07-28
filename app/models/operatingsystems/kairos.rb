class Kairos < Operatingsystem
  #
  # Example PXE URLs:
  # https://github.com/kairos-io/kairos/releases/download/v2.3.0/kairos-almalinux-v2.3.0-kernel
  # https://github.com/kairos-io/kairos/releases/download/v2.3.0/kairos-almalinux-v2.3.0-initrd
  # https://github.com/kairos-io/kairos/releases/download/v2.3.0/kairos-almalinux-v2.3.0.squashfs
  #
  PXEFILES = {
    kernel: 'kairos-v$release-$major.$minor-kernel',
    initrd: 'kairos-v$release-$major.$minor-initrd',
  }

  def pxe_type
    'kairos'
  end

  def bootfile(medium_provider, type)
    medium_provider.interpolate_vars(super).to_s
  end

  def pxedir(medium_provider = nil)
    medium_provider.interpolate_vars('download/v$major.$minor').to_s
  end

  def display_family
    'Kairos'
  end

  # Does this OS family use release_name in its naming scheme
  def use_release_name?
    true
  end

  # Helper text shown next to major version (do not use i18n)
  def major_version_help
    '2.3'
  end

  # Helper text shown next to minor version (do not use i18n)
  def minor_version_help
    '0'
  end

  # Helper text shown next to release name (do not use i18n)
  def release_name_help
    'almalinux, debian, ubuntu'
  end
end
