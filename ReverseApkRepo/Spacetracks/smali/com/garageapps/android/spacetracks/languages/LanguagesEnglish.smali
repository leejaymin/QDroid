.class public Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;
.super Lcom/garageapps/android/spacetracks/languages/Languages;
.source "LanguagesEnglish.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/languages/Languages;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    .line 17
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ON:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_YES:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_NO:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_MIN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_MAX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_BACK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BACK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CHOOSE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CHOOSE:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONFIRM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OH REALLY?"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "START"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OPTIONS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RECORDS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ROOT_4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QUIT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NEW GAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONTINUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_START_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SINGLE GAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SOUND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GRAPHICS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONTROLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_OPTIONS_4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LANGUAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MUSIC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SOUND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_AUDIO_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VOLUME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISTANCE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DETAILS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_VIDEO_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXTURES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONTROLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ON SCREEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SENSORS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIBRATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPAD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_CONTROL_K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SOFT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RESUME GAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MAIN MENU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GAME_3:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QUIT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ENGLISH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ENGLISH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_SERBIAN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SERBIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_GERMAN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GERMAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_FRENCH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FRENCH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_ITALIAN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ITALIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;->mLanguage:Ljava/util/HashMap;

    sget v1, Lcom/garageapps/android/spacetracks/languages/Languages;->LANG_MAIN_MENU_MENU_SPANISH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SPANISH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
