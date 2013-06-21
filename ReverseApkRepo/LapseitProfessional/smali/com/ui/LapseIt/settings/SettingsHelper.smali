.class public Lcom/ui/LapseIt/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;,
        Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;,
        Lcom/ui/LapseIt/settings/SettingsHelper$OTHER_PARAMS;,
        Lcom/ui/LapseIt/settings/SettingsHelper$RENDER_PARAMS;
    }
.end annotation


# static fields
.field public static final FULLVERSION:Ljava/lang/String; = "proversion"

.field public static GALLERY_PASSWORD:Ljava/lang/String; = null

.field public static GALLERY_SAVE_LOGIN:Ljava/lang/String; = null

.field public static GALLERY_USERNAME:Ljava/lang/String; = null

.field static final HEADER:Ljava/lang/String; = "header"

.field public static final MARKET_RATED:Ljava/lang/String; = "marketRated"

.field public static final SCHEDULED_END:Ljava/lang/String; = "scheduledEnd"

.field public static final SCHEDULED_START:Ljava/lang/String; = "scheduledStart"

.field public static final TWEET_AFTER_UPLOAD:Ljava/lang/String; = "tweetAfterUpload"

.field public static VALUES_FALSE:Ljava/lang/String;

.field public static VALUES_TRUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "galleryUsername"

    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_USERNAME:Ljava/lang/String;

    .line 19
    const-string v0, "galleryPassword"

    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_PASSWORD:Ljava/lang/String;

    .line 20
    const-string v0, "gallerySaveLogin"

    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_SAVE_LOGIN:Ljava/lang/String;

    .line 22
    const-string v0, "true"

    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->VALUES_TRUE:Ljava/lang/String;

    .line 23
    const-string v0, "false"

    sput-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->VALUES_FALSE:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 187
    const-string v0, "resolution"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "480p"

    .line 224
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const-string v0, "240p"

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "interval"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string v0, "5"

    goto :goto_0

    .line 195
    :cond_2
    const-string v0, "limitmode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const-string v0, "user"

    goto :goto_0

    .line 197
    :cond_3
    const-string v0, "limitvalue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const-string v0, "0"

    goto :goto_0

    .line 199
    :cond_4
    const-string v0, "timescale"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    const-string v0, "seconds"

    goto :goto_0

    .line 201
    :cond_5
    const-string v0, "geolocation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 202
    const-string v0, "false"

    goto :goto_0

    .line 203
    :cond_6
    const-string v0, "delay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    const-string v0, "500"

    goto :goto_0

    .line 205
    :cond_7
    const-string v0, "shutter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    const-string v0, "disabled"

    goto :goto_0

    .line 207
    :cond_8
    const-string v0, "dim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 208
    const-string v0, "50"

    goto :goto_0

    .line 209
    :cond_9
    const-string v0, "directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 210
    invoke-static {}, Lcom/ui/LapseIt/Main;->isPro()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/LapseItPro/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 213
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/LapseIt/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 215
    :cond_b
    const-string v0, "renderencoder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 216
    const-string v0, "mp4"

    goto/16 :goto_0

    .line 217
    :cond_c
    const-string v0, "renderfps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 218
    const-string v0, "30"

    goto/16 :goto_0

    .line 219
    :cond_d
    const-string v0, "renderquality"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 220
    const-string v0, "2500000"

    goto/16 :goto_0

    .line 221
    :cond_e
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_SAVE_LOGIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 222
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->VALUES_FALSE:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static getDetailParams(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .parameter "detailRequest"

    .prologue
    .line 229
    const-string v0, "geolocation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->BOOLEAN_PARAMS:[[Ljava/lang/String;

    .line 244
    :goto_0
    return-object v0

    .line 231
    :cond_0
    const-string v0, "resolution"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->RESOLUTION_PARAMS:[[Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_1
    const-string v0, "limitmode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->LIMITMODE_PARAMS:[[Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "timescale"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->TIMESCALE_PARAMS:[[Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_3
    const-string v0, "shutter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->ENABLED_PARAMS:[[Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_4
    const-string v0, "renderencoder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->ENCODER_PARAMS:[[Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_5
    const-string v0, "renderquality"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper$DETAILS_PARAMS;->QUALITY_PARAMS:[[Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSettings(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5
    .parameter "context"

    .prologue
    .line 149
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, settings:Landroid/os/Bundle;
    const-string v2, "resolution"

    const-string v3, "resolution"

    const-string v4, "resolution"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "interval"

    const-string v3, "interval"

    const-string v4, "interval"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "timescale"

    const-string v3, "timescale"

    const-string v4, "timescale"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "geolocation"

    const-string v3, "geolocation"

    const-string v4, "geolocation"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "delay"

    const-string v3, "delay"

    const-string v4, "delay"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "shutter"

    const-string v3, "shutter"

    const-string v4, "shutter"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "limitmode"

    const-string v3, "limitmode"

    const-string v4, "limitmode"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "limitvalue"

    const-string v3, "limitvalue"

    const-string v4, "limitvalue"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "schedule"

    const-string v3, "schedule"

    const-string v4, "schedule"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "directory"

    const-string v3, "directory"

    const-string v4, "directory"

    invoke-static {v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method public static parseQuality(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "quality"

    .prologue
    .line 249
    sparse-switch p1, :sswitch_data_0

    .line 263
    const-string v0, "Other"

    :goto_0
    return-object v0

    .line 251
    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :sswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :sswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :sswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0xf4240 -> :sswitch_0
        0x2625a0 -> :sswitch_1
        0x4c4b40 -> :sswitch_2
        0x1312d00 -> :sswitch_3
    .end sparse-switch
.end method

.method public static removeSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 180
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    return-void
.end method

.method public static updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, sharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method
