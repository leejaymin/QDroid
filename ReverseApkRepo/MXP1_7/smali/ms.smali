.class public final Lms;
.super Ljava/lang/Object;


# static fields
.field public static ㅼ꽑嫄:Ljava/lang/String;

.field public static ㅼ꽑嫄곗쓽:Z

.field public static ㅼ쬆:Ljava/lang/String;

.field public static 寃껋씠:I

.field public static 弱밧:Ljava/lang/String;

.field public static 弱방떙:Z

.field private static 怨:Lmu;

.field public static 洹:I

.field public static 洹멸:Z

.field private static 湲고빐:Landroid/graphics/Typeface;

.field public static 癤욱븳援:I

.field public static 궗:Z

.field public static 꾨뱾:I

.field public static final 꾩:Ljava/io/FileFilter;

.field public static 대떎:[Ljava/io/File;

.field public static 대쫫:I

.field private static 덉넚:Ljava/lang/String;

.field public static 덉쓣:I

.field private static 듦낵:I

.field public static 뚮Ц:Z

.field public static 뚮벏:I

.field public static 뚮젮議뚮떎怨:I

.field public static 롩퐢:Z

.field public static 먮:I

.field public static 먯껜蹂대떎:Z

.field public static 먯꽌:Ljava/lang/String;

.field private static 몃:Ljava/util/TreeMap;

.field public static 몃Ъ:I

.field public static 붿슧:F

.field public static 쇰뒗:I

.field public static 앸ぐ:Z

.field private static 쥌:I

.field public static 留먰븷:Z

.field public static 紐낆옱:Z

.field public static 李:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmt;

    invoke-direct {v0}, Lmt;-><init>()V

    sput-object v0, Lms;->꾩:Ljava/io/FileFilter;

    return-void
.end method

.method public static ㅼ꽑嫄()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    sget-boolean v2, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v2, Lms;->李:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "auto_hide_soft_buttons"

    sget v4, Lgr;->궗:I

    const/16 v5, 0x2756

    if-eq v4, v5, :cond_2

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static ㅼ꽑嫄(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lms;->몃:Ljava/util/TreeMap;

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static ㅼ꽑嫄곗쓽()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "video_zoom_limited"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "video_zoom_limited"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lgr;->癤욱븳援:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "video_zoom_limited"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static ㅼ쬆()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lms;->뚮벏()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "omxdecoder_net"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static 寃껋씠()Z
    .locals 4

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "subtitle_fadeout"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 弱밧()Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Lms;->湲고빐:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    sget v0, Lms;->쥌:I

    sget v1, Lms;->쇰뒗:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lms;->덉넚:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lms;->湲고빐:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lms;->덉넚:Ljava/lang/String;

    sget-object v1, Lms;->弱밧:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lms;->湲고빐:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    sget v1, Lms;->쇰뒗:I

    invoke-static {v0, v1}, Liu;->癤욱븳援(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lms;->湲고빐:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    sput-object v0, Lms;->덉넚:Ljava/lang/String;

    sget v0, Lms;->쇰뒗:I

    sput v0, Lms;->쥌:I

    sget-object v0, Lms;->湲고빐:Landroid/graphics/Typeface;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    sget-object v2, Lms;->弱밧:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lms;->弱밧:Ljava/lang/String;

    invoke-static {}, Lms;->弱밧()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic 弱방떙()Ljava/util/TreeMap;
    .locals 1

    sget-object v0, Lms;->몃:Ljava/util/TreeMap;

    return-object v0
.end method

.method public static 洹()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lms;->몃:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static 癤욱븳援(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lms;->몃:Ljava/util/TreeMap;

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static 癤욱븳援()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lms;->몃:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sget-object v1, Lms;->몃:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v5, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "screen_summary_show_ipa"

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lms;->궗:Z

    const-string v3, "detail_dictionary"

    const-string v4, ""

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lms;->궗(Ljava/lang/String;)V

    const-string v3, "screen_brightness_auto"

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lms;->뚮Ц:Z

    const-string v3, "screen_brightness"

    const/high16 v4, 0x3f00

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    sput v3, Lms;->붿슧:F

    const-string v3, "over_volume"

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->먮:I

    const-string v3, "video_zoom"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->뚮젮議뚮떎怨:I

    invoke-static {}, Lms;->ㅼ꽑嫄곗쓽()Z

    move-result v3

    sput-boolean v3, Lms;->留먰븷:Z

    const-string v3, "screen_orientation"

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "screen_orientation"

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->덉쓣:I

    :goto_0
    const-string v3, "subtitle_text_color"

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->대쫫:I

    const-string v3, "subtitle_border_color"

    const/high16 v4, -0x100

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->洹:I

    const-string v3, "subtitle_typeface_name"

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lms;->弱밧:Ljava/lang/String;

    const-string v3, "subtitle_typeface_style"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->쇰뒗:I

    const-string v3, "subtitle_alignment"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lms;->몃Ъ:I

    const-string v3, "subtitle_bkcolor_enabled"

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lms;->먯껜蹂대떎:Z

    const-string v3, "subtitle_bkcolor"

    invoke-interface {v5, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "subtitle_bkcolor"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lms;->꾨뱾:I

    :goto_1
    const-string v2, "subtitle_bottom_padding"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lms;->뚮벏:I

    const-string v2, "elapsed_time_show_always"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lms;->紐낆옱:Z

    const-string v2, "default_swaudio"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lms;->롩퐢:Z

    const-string v2, "subtitle_charset"

    const-string v3, ""

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lms;->癤욱븳援(Ljava/lang/String;)V

    const-string v2, "pause_on_seek"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lms;->弱방떙:Z

    const-string v2, "video_scan_roots"

    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lms;->앸ぐ()[Ljava/io/File;

    move-result-object v2

    sput-object v2, Lms;->대떎:[Ljava/io/File;

    :cond_0
    const-string v2, "respect_nomedia"

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lms;->ㅼ꽑嫄곗쓽:Z

    const-string v2, "show_hidden"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lms;->앸ぐ:Z

    const-string v2, "playback_touch_action"

    invoke-interface {v5, v2, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lms;->寃껋씠:I

    invoke-static {p0}, Lms;->먯꽌(Landroid/content/Context;)V

    new-instance v2, Lmu;

    invoke-direct {v2, p0}, Lmu;-><init>(Landroid/content/Context;)V

    sput-object v2, Lms;->怨:Lmu;

    sget-object v2, Lms;->怨:Lmu;

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-boolean v2, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-eqz v2, :cond_5

    sput v11, Lms;->癤욱븳援:I

    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    invoke-static {p0}, Lgs;->癤욱븳援(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lms;->洹멸:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_6

    sget-boolean v2, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lms;->洹멸:Z

    if-nez v2, :cond_6

    :goto_3
    sput-boolean v0, Lms;->李:Z

    :goto_4
    return-void

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_2

    const/4 v3, 0x6

    sput v3, Lms;->덉쓣:I

    goto/16 :goto_0

    :cond_2
    sput v0, Lms;->덉쓣:I

    goto/16 :goto_0

    :cond_3
    sget v3, Lnl;->default_subtitle_bkcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lms;->꾨뱾:I

    goto/16 :goto_1

    :cond_4
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v2, v6

    new-array v2, v2, [Ljava/io/File;

    sput-object v2, Lms;->대떎:[Ljava/io/File;

    array-length v7, v6

    move v2, v0

    move v3, v0

    :goto_5
    if-ge v2, v7, :cond_0

    aget-object v8, v6, v2

    sget-object v9, Lms;->대떎:[Ljava/io/File;

    add-int/lit8 v4, v3, 0x1

    new-instance v10, Ljava/io/File;

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_5

    :cond_5
    sput v0, Lms;->癤욱븳援:I

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_8

    move v0, v1

    :cond_8
    sput-boolean v0, Lms;->洹멸:Z

    sput-boolean v1, Lms;->李:Z

    goto :goto_4
.end method

.method public static 癤욱븳援(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sput-object p0, Lms;->ㅼ쬆:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lms;->ㅼ쬆:Ljava/lang/String;

    goto :goto_0
.end method

.method public static 癤욱븳援([Ljava/io/File;)V
    .locals 5

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p0, :cond_1

    sput-object p0, Lms;->대떎:[Ljava/io/File;

    array-length v2, p0

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    const-string v0, "video_scan_roots"

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_0
    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lms;->앸ぐ()[Ljava/io/File;

    move-result-object v0

    sput-object v0, Lms;->대떎:[Ljava/io/File;

    const-string v0, "video_scan_roots"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static 癤욱븳援(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 4

    sget-object v0, Lms;->몃:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    if-eqz p1, :cond_1

    sget-object v0, Lms;->몃:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :goto_0
    const-string v0, "video_exts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lms;->몃:Ljava/util/TreeMap;

    invoke-static {p0, v0}, Lms;->궗(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static 궗()I
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "video_zoom_delay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    sget v0, Lgr;->癤욱븳援:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    sget v0, Lgr;->癤욱븳援:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_zoom_delay"

    const-string v2, "200"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    const/16 v0, 0xc8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 궗(Landroid/content/Context;)I
    .locals 6

    const/16 v2, 0x3c

    const/16 v1, 0x10

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "subtitle_text_size"

    sget v4, Lms;->듦낵:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v4, 0x4

    if-lt v0, v4, :cond_1

    const/16 v0, 0x18

    :goto_1
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v0, v4, v0

    float-to-int v0, v0

    if-ge v0, v1, :cond_3

    :goto_2
    sput v1, Lms;->듦낵:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const/16 v0, 0x14

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method private static 궗(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lnj;->default_file_exts:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static 궗(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lms;->먯꽌:Ljava/lang/String;

    const-string v0, "(.+?://)?.+?(/|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lms;->ㅼ꽑嫄:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static 꾨뱾()Z
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "subtitle_shadow_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic 대떎()Z
    .locals 1

    invoke-static {}, Lms;->ㅼ꽑嫄곗쓽()Z

    move-result v0

    return v0
.end method

.method public static 대쫫()F
    .locals 1

    sget-boolean v0, Lms;->뚮Ц:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    sget v0, Lms;->붿슧:F

    goto :goto_0
.end method

.method public static 덉쓣()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "button_backlight_off"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "button_backlight_off"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lgr;->궗:I

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    sget-boolean v2, Lms;->洹멸:Z

    if-eqz v2, :cond_0

    sget v2, Lgr;->궗:I

    const/16 v3, 0x2738

    if-ne v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    :cond_2
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "button_backlight_off"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    move v0, v1

    goto :goto_0
.end method

.method public static 뚮Ц()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "italic_tag"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "italic_tag"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "pl"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "italic_tag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    move v0, v1

    goto :goto_0
.end method

.method public static 뚮벏()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/mxtech/videoplayer/L;->洹:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "omxdecoder"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static 뚮젮議뚮떎怨()Ljava/io/File;
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "typeface_dir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static 롩퐢()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lms;->뚮벏()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "omxdecoder_local"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 먮()I
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "core_limit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mxtech/app/AppUtils;->getProcessorCount()I

    move-result v0

    goto :goto_0
.end method

.method public static 먯껜蹂대떎()Z
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "subtitle_border_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "subtitle_border_enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lgs;->ㅼ꽑嫄()J

    move-result-wide v1

    const-wide/32 v3, 0x389fd980

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static 먯꽌()I
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    sget-object v1, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v0, Lms;->먮:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static 먯꽌(Ljava/lang/String;)I
    .locals 6

    const/4 v1, -0x1

    sget-object v3, Lms;->대떎:[Ljava/io/File;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    return v1

    :cond_0
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static 먯꽌(Landroid/content/Context;)V
    .locals 5

    const-string v0, "video_exts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v2}, Lms;->궗(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    sput-object v2, Lms;->몃:Ljava/util/TreeMap;

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static 몃Ъ()Z
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "navi_show_move_buttons"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static 붿슧()Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "subtitle_folder"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static 쇰뒗()Ljava/lang/String;
    .locals 2

    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "sans-serif"

    sget-object v1, Lms;->弱밧:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const-string v0, "Droid Sans"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Roboto"

    goto :goto_0

    :cond_2
    const-string v0, "serif"

    sget-object v1, Lms;->弱밧:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Droid Serif"

    goto :goto_0

    :cond_3
    const-string v0, "monospace"

    sget-object v1, Lms;->弱밧:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Droid Sans Mono"

    goto :goto_0

    :cond_4
    sget-object v0, Lms;->弱밧:Ljava/lang/String;

    invoke-static {v0}, Lcom/mxtech/graphics/Fonts;->getFamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static 앸ぐ()[Ljava/io/File;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    aput-object v2, v0, v4

    new-instance v1, Ljava/io/File;

    const-string v2, "/Removable"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Ljava/io/File;

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public static 留먰븷()Z
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "correct_hw_aspect_ratio"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static 紐낆옱()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lms;->뚮벏()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "omxdecoder_10bit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
