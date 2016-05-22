package Gtk3::SourceView;

use strict;
use warnings;
use Glib::Object::Introspection;

our $VERSION = "0.01";


# customization ------------------------------------------------------- #

my %_NAME_CORRECTIONS = (
);
my @_CLASS_STATIC_METHODS = qw/
	Gtk3::SourceView::LanguageManager::get_default
	Gtk3::SourceView::StyleSchemeManager::get_default

	Gtk3::SourceView::Encoding::get_utf8
	Gtk3::SourceView::Encoding::get_current
	Gtk3::SourceView::Encoding::get_from_charset
/;
my @_FLATTEN_ARRAY_REF_RETURN_FOR = qw/	
	Gtk3::SourceView::Buffer::get_context_classes_at_iter
	Gtk3::SourceView::Buffer::get_source_marks_at_line
	Gtk3::SourceView::Buffer::get_source_marks_at_iter
	Gtk3::SourceView::Language::get_mime_types
	Gtk3::SourceView::Language::get_globs
	Gtk3::SourceView::Language::get_style_ids
	Gtk3::SourceView::LanguageManager::get_search_path
	Gtk3::SourceView::LanguageManager::get_language_ids
	Gtk3::SourceView::StyleScheme::get_authors
	Gtk3::SourceView::StyleSchemeManager::get_search_path
	Gtk3::SourceView::StyleSchemeManager::get_scheme_ids
	Gtk3::SourceView::Completion::get_providers

	Gtk3::SourceView::Encoding::get_all
	Gtk3::SourceView::Encoding::get_default_candidates
/;
# unsicher bin ich mir bei folgenden funktionen (noch zu testen!!!! ich glaub eher nicht):
# Gtk3::SourceView::Completion::add_provider
# Gtk3::SourceView::Completion::remove_provider
# nach test: Es klappt sowohl mit als auch ohne. Ich lass die Funktionen daher raus :-)
#
# Ich glaube auch diese gehören hier nicht rein: 
# 	Gtk3::SourceView::GutterRenderer::get_background
#	Gtk3::SourceView::MarkAttributes::get_background
my @_HANDLE_SENTINEL_BOOLEAN_FOR = qw/
	Gtk3::SourceView::SearchContext::forward
	Gtk3::SourceView::SearchContext::backward
/;
my @_USE_GENERIC_SIGNAL_MARSHALLER_FOR = (
);


sub import {

	Glib::Object::Introspection->setup(
		basename => 'GtkSource',
		version => '3.0',
		package => 'Gtk3::SourceView',

		name_corrections => \%_NAME_CORRECTIONS,
		class_static_methods =>\@_CLASS_STATIC_METHODS,
		flatten_array_ref_return_for =>\@_FLATTEN_ARRAY_REF_RETURN_FOR,
		handle_sentinel_boolean_for => \@_HANDLE_SENTINEL_BOOLEAN_FOR,
		use_generic_signal_marshaller_for => \@_USE_GENERIC_SIGNAL_MARSHALLER_FOR);
}

1;
