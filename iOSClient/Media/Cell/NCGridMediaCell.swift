//
//  NCGridMediaCell.swift
//  Nextcloud
//
//  Created by Marino Faggiana on 12/02/2019.
//  Copyright © 2019 Marino Faggiana. All rights reserved.
//
//  Author Marino Faggiana <marino.faggiana@nextcloud.com>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

class NCGridMediaCell: UICollectionViewCell, NCCellProtocol {

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var imageVisualEffect: UIVisualEffectView!
    @IBOutlet weak var imageSelect: UIImageView!
    @IBOutlet weak var imageStatus: UIImageView!

    private var objectId: String = ""
    private var user: String = ""

    var date: Date?

    var filePreviewImageView: UIImageView? {
        get { return imageItem }
        set {}
    }
    var fileAvatarImageView: UIImageView? {
        get { return nil }
    }
    var fileObjectId: String? {
        get { return objectId }
        set { objectId = newValue ?? "" }
    }
    var fileUser: String? {
        get { return user }
        set { user = newValue ?? "" }
    }
    var fileTitleLabel: UILabel? {
        get { return nil }
        set {}
    }
    var fileInfoLabel: UILabel? {
        get { return nil }
        set {}
    }
    var fileProgressView: UIProgressView? {
        get { return nil }
        set {}
    }
    var fileSelectImage: UIImageView? {
        get { return imageSelect }
        set { imageSelect = newValue }
    }
    var fileStatusImage: UIImageView? {
        get { return nil }
        set {}
    }
    var fileLocalImage: UIImageView? {
        get { return nil }
        set {}
    }
    var fileFavoriteImage: UIImageView? {
        get { return nil }
        set {}
    }
    var fileSharedImage: UIImageView? {
        get { return nil }
        set {}
    }
    var fileMoreImage: UIImageView? {
        get { return nil }
        set {}
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initCell()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        initCell()
    }

    func initCell() {
        imageItem.backgroundColor = UIColor.lightGray
        imageStatus.image = nil
        imageItem.image = nil
        imageItem.layer.masksToBounds = true
        imageItem.layer.cornerRadius = 6
        imageVisualEffect.layer.cornerRadius = 6
        imageVisualEffect.clipsToBounds = true
    }

    func selectMode(_ status: Bool) {
        if status {
            imageSelect.isHidden = false
        } else {
            imageSelect.isHidden = true
            imageVisualEffect.isHidden = true
        }
    }

    func selected(_ status: Bool) {
        if status {
            imageSelect.image = NCBrandColor.cacheImages.checkedYes
            imageVisualEffect.isHidden = false
            imageVisualEffect.alpha = 0.4
        } else {
            imageSelect.isHidden = true
            imageVisualEffect.isHidden = true
        }
    }

    func writeInfoDateSize(date: NSDate, totalBytes: Int64) {}
    func setButtonMore(named: String, image: UIImage) {}
}
