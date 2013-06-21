.class public Lcom/garageapps/android/spacetracks/languages/LanguageManager;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# instance fields
.field final DEFAULT_ENGLISH:I

.field private mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

.field private mLanguageID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageID:I

    .line 16
    iput v1, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->DEFAULT_ENGLISH:I

    .line 20
    invoke-virtual {p0, v1}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->setLanguage(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageID:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->DEFAULT_ENGLISH:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->setLanguage(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "element"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/languages/Languages;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageID:I

    return v0
.end method

.method public setLanguage(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 35
    iget v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageID:I

    if-ne v0, p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 38
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/languages/LanguagesEnglish;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    .line 65
    :goto_1
    iput p1, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageID:I

    goto :goto_0

    .line 45
    :pswitch_0
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguagesSerbian;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/languages/LanguagesSerbian;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    goto :goto_1

    .line 49
    :pswitch_1
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguagesGerman;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/languages/LanguagesGerman;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    goto :goto_1

    .line 53
    :pswitch_2
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguagesFrench;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/languages/LanguagesFrench;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    goto :goto_1

    .line 57
    :pswitch_3
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguagesItalian;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/languages/LanguagesItalian;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    goto :goto_1

    .line 61
    :pswitch_4
    new-instance v0, Lcom/garageapps/android/spacetracks/languages/LanguagesSpanish;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/languages/LanguagesSpanish;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/languages/LanguageManager;->mLanguageDefinitions:Lcom/garageapps/android/spacetracks/languages/Languages;

    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
