//
//  Strings + Extension.swift
//  base
//
//  Created by Руслан Гайфуллин on 27.09.2023.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: self)
    }
}
