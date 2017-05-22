//
//  CCCoreData.m
//  Crypto Cloud Technology Nextcloud
//
//  Created by Marino Faggiana on 02/02/16.
//  Copyright (c) 2017 TWS. All rights reserved.
//
//  Author Marino Faggiana <m.faggiana@twsweb.it>
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

#import "CCCoreData.h"

@implementation CCCoreData

+ (NSArray *)getAllAccount
{
    NSMutableArray *accounts = [NSMutableArray new];
    NSArray *records;
    
    records = [TableAccount MR_find];
    
    for (TableAccount *tableAccount in records)
        [accounts addObject:tableAccount];
    
    return accounts;
}

+ (NSMutableArray *)getAllCertificatesLocationOldDB
{
    NSMutableArray *output = [NSMutableArray new];
    
    NSArray *records = [TableCertificates MR_findAll];
    
    for (TableCertificates *record in records) {
        
        if (record.certificateLocation && record.certificateLocation.length > 0)
            [output addObject:record.certificateLocation];
        
    }
    
    return output;
}

@end
