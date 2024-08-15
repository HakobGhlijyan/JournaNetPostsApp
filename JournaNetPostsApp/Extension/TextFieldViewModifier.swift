//
//  TextFieldViewModifier.swift
//  JournaNetPostsApp
//
//  Created by Hakob Ghlijyan on 15.08.2024.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    @Binding var text: String
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.system(size: 17))
            .foregroundStyle(.journaNetWhite)
            .frame(height: 62)
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color(.secondarySystemBackground))
                    .stroke(text.isEmpty ? Color.journaNetTabDisabled : Color.journaNetPrimary, lineWidth: 1)
            )
            
    }
}

extension View {
    func textFieldStyleCustom(_ text: Binding<String>) -> some View {
        self.modifier(TextFieldModifier(text: text))
    }
}

struct TextEditorModifier: ViewModifier {
    @Binding var text: String
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color(.secondarySystemBackground))
                    .stroke(text.isEmpty ? Color.journaNetTabDisabled : Color.journaNetPrimary, lineWidth: 2)
            )
            .font(.system(size: 17))
            .foregroundColor(.journaNetWhite)
            .cornerRadius(20)
            .frame(height: 250)
            .textEditorStyle(.plain)
    }
}

extension View {
    func textEditorStyleCustom(_ text: Binding<String>) -> some View {
        self.modifier(TextEditorModifier(text: text))
    }
}
