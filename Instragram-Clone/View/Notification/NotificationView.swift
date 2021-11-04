//
//  NotificationView.swift
//  Instragram-Clone
//
//  Created by Kittisak Boonchalee on 12/10/21.
//

import SwiftUI

struct NotificationView: View {
    @ObservedObject var viewModel = NotificationsViewModel()
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(viewModel.notifications){ notification in
                    NotificationCell(viewModel: NotificationsCellViewModel(notification: notification))
                        .padding(.top)
                }
            }
        }
        
    }
}

