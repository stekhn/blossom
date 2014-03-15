/* ****************************************************************** */
/* Blossom – a light map style fo                                     */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * http://mapbox.com/carto/
 *
 * For getting you tiles on the Internet I recommend TileStream,
 * Mapbox’ NodeJS tile server. 
 *
 * http://github.com/mapbox/tilestream
 *
 * This theme is based on the OSM Bright and Flicker’s Pandonia.
 *
 * http://github.com/mapbox/osm-bright
 * http://github.com/flickr/Pandonia
 * 
*/

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* COLORS
/* ================================================================== */

@bluish_white:      #fefaff;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #fdfbfa;
@water:             #b9e5f4;
@beach:             @land;

@park:              #c9e7af;
@wooded:            darken(@park, 5%);
@grass:             @park;
@sports:            @park;
@agriculture:       #e8ffd8;
@cemetery:          @park * .97;

@building:          @land * 0.95;
@hospital:          @land * 0.97;
@school:            @land * 0.98;

@residential:       @land;
@commercial:        @land;
@industrial:        @land;
@parking:           @land;

@stream:            @water; //#dcecfb;
@canal:             @stream;

@road:              #ecebe6;
@motorway:          #fff6be;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@standard_line:     @road * 0.95; // @land * 0.92;
@standard_fill:     @road; // @bluish_white;
@standard_case:     @road * 0.95; // @land * 0.88
@standard_tunnel_fill: #fcfcfb;

@motorway_line:     @motorway * 0.95; // @land * 0.85;
@motorway_fill:     @motorway;
@motorway_case:     @motorway * 0.95; // @land * 0.85;
@motorway_tunnel_fill: lighten(@motorway, 20%); // #fcf8e9;

@trunk_line:        @motorway_line;
@trunk_fill:        @motorway;// @motorway_fill;
@trunk_case:        @motorway_case;
@trunk_tunnel_fill: @motorway_tunnel_fill;

@primary_line:      @motorway_line; // @land * 0.92;
@primary_fill:      @motorway; //@standard_fill;
@primary_case:      @motorway_case;
@primary_tunnel_fill: @standard_tunnel_fill;

@secondary_line:    @road * 0.95; // @primary_line;
@secondary_fill:    @road; // @standard_fill;
@secondary_case:    @road * 0.95; // @motorway_case;
@secondary_tunnel_fill:@standard_tunnel_fill;

/* We aren't using cases for pedestrian ways, and we don't need
 * lines because they aren't visible at lower zoom levels. */

@pedestrian_area:   @land * 0.97;
@pedestrian_fill:   @land * 0.90;
@pedestrian_bridge_fill: @land * 0.80;
@pedestrian_bridge_case: @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FAFAF5;
@cycle_case:        @land;

@rail_fill:         @land * 0.88;
@rail_bridge_fill:  @land * 0.78;
@rail_case:         @land; // Used only on rail bridges.

@aeroway:           #ddd;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #8fa7bc;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(@bluish_white,5%);

@country_text:      #333;
@country_halo:      @place_halo;

@state_text:        #333;
@state_halo:        @place_halo;

@city_text:         #333;
@city_halo:         @place_halo;

@town_text:         #333;
@town_halo:         @place_halo;

@poi_text:          #333;  

@road_text:         #887b00;
@street_text:       #333;
@road_halo:         @bluish_white;

@other_text:        #333;
@other_halo:        @place_halo;

@locality_text:     #333;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #333;
@village_halo:      @place_halo;

/* ****************************************************************** */
