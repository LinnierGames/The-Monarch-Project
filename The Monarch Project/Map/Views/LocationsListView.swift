//
//  LocationsListView.swift
//  Monarch Project
//
//  Created by jimenez on 5/9/22.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(vm.locations) { location in
                    listRowView(location: location)
                        .padding(.vertical, 4)
                        .listRowBackground(Color.white)
                    
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsListView {
    
    private func listRowView(location: Location) -> some View{
        VStack {
            HStack {
                if let imageName = location.imageNames.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                }
                
                VStack(alignment: .leading) {
                    Text(location.name)
                        .font(.headline)
                    Text(location.cityName)
                        .font(.subheadline)
                    
                } //VStack
                .frame(maxWidth: .infinity, alignment: .leading)
                
            } //HStack
        } //VStack
    }
    
}
