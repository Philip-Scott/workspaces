/*
 * Copyright (c) 2020 - Today Goncalo Margalho ()
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA
 *
 * Authored by: Goncalo Margalho <g@margalho.info>
 */

public class Workspaces.Widgets.WorkspaceItem : Granite.Widgets.SourceList.Item {
    private Workspaces.Models.Workspace workspace;

    public WorkspaceItem (Workspaces.Models.Workspace workspace) {
        Object (name: workspace.name);

        this.workspace = workspace;
    }

    public override Gtk.Menu ? get_context_menu () {
        Gtk.Menu menu = new Gtk.Menu ();
        Gtk.MenuItem menu_item = new Gtk.MenuItem.with_label (_ ("Delete"));
        menu.add (menu_item);
        menu.show_all ();

        return menu;
    }
}