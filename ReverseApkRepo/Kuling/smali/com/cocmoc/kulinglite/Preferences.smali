.class public Lcom/cocmoc/kulinglite/Preferences;
.super Landroid/app/Activity;
.source "Preferences.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"

.field public static final PREFS_NAME:Ljava/lang/String; = "KulingPrefs"

.field public static final PREFS_REGISTER:Ljava/lang/String; = "r"

.field public static final PREFS_TEXT_COLOR_2_FIELD_PATTERN:Ljava/lang/String; = "TextColor-2"

.field public static final PREFS_TEXT_COLOR_FIELD_PATTERN:Ljava/lang/String; = "TextColor-1"

.field public static final PREFS_THEME:Ljava/lang/String; = "Theme"

.field private static final PREFS_UPDATE_RATE_DEFAULT:I = 0x708

.field public static final PREFS_UPDATE_RATE_FIELD_PATTERN:Ljava/lang/String; = "UpdateRate-%d"

.field public static final PREFS_WEATHER_STATION_FIELD_PATTERN:Ljava/lang/String; = "WeatherStation-%d"

.field private static final STATION_CODE:I = 0x1

.field static final TEXTCOLOR_DIALOG_ID:I = 0x2

.field private static final THEME_CODE:I

.field static final TIME_DIALOG_ID:I


# instance fields
.field private appWidgetId:I

.field handler:Landroid/os/Handler;

.field private mHour:I

.field private mMinute:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private myTextColor:I

.field private myTextColor_2:I

.field private register:Ljava/lang/String;

.field private station:Ljava/lang/String;

.field private stationTag:Ljava/lang/String;

.field stationTextView:Landroid/widget/TextView;

.field private tema:Ljava/lang/String;

.field private temaTag:Ljava/lang/String;

.field textColorTextView:Landroid/widget/TextView;

.field private theme:Ljava/lang/String;

.field private themeTag:Ljava/lang/String;

.field themeTextView:Landroid/widget/TextView;

.field private updateRate:Ljava/lang/String;

.field private updateRateTag:Ljava/lang/String;

.field private updateRateTag2:Ljava/lang/String;

.field updateRateTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x100

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    .line 66
    const-string v0, "-1"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;

    .line 67
    const-string v0, "30"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;

    .line 68
    const-string v0, "Uppdatering: "

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTag:Ljava/lang/String;

    .line 69
    const-string v0, " minuter"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTag2:Ljava/lang/String;

    .line 70
    const-string v0, "default"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    .line 71
    const-string v0, "Utseende p\u00e5 pil: "

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTag:Ljava/lang/String;

    .line 72
    const-string v0, "Kugg\u00f6ren"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    .line 73
    const-string v0, "V\u00e4derstation: "

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTag:Ljava/lang/String;

    .line 76
    const-string v0, "Dark"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;

    .line 77
    const-string v0, "F\u00e4rger p\u00e5 Text: "

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->temaTag:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I

    .line 79
    iput v1, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I

    .line 83
    const/16 v0, 0x1e

    iput v0, p0, Lcom/cocmoc/kulinglite/Preferences;->mMinute:I

    .line 88
    new-instance v0, Lcom/cocmoc/kulinglite/Preferences$1;

    invoke-direct {v0, p0}, Lcom/cocmoc/kulinglite/Preferences$1;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->handler:Landroid/os/Handler;

    .line 341
    new-instance v0, Lcom/cocmoc/kulinglite/Preferences$2;

    invoke-direct {v0, p0}, Lcom/cocmoc/kulinglite/Preferences$2;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cocmoc/kulinglite/Preferences;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/cocmoc/kulinglite/Preferences;->mHour:I

    return-void
.end method

.method static synthetic access$10(Lcom/cocmoc/kulinglite/Preferences;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    return v0
.end method

.method static synthetic access$11(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cocmoc/kulinglite/Preferences;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I

    return v0
.end method

.method static synthetic access$13(Lcom/cocmoc/kulinglite/Preferences;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I

    return v0
.end method

.method static synthetic access$14(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->temaTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cocmoc/kulinglite/Preferences;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput p1, p0, Lcom/cocmoc/kulinglite/Preferences;->mMinute:I

    return-void
.end method

.method static synthetic access$3(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTag2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cocmoc/kulinglite/Preferences;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I

    return-void
.end method

.method static synthetic access$9(Lcom/cocmoc/kulinglite/Preferences;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 355
    const-string v2, "Kuling"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preferences: onActivityResult()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-nez p1, :cond_2

    .line 364
    if-nez p2, :cond_1

    .line 365
    const-string v2, "kugg\u00f6ren"

    iput-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    if-eqz p3, :cond_0

    .line 371
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    .line 372
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 377
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 383
    if-nez p2, :cond_3

    .line 384
    const-string v2, "Kugg\u00f6ren"

    iput-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    goto :goto_0

    .line 389
    :cond_3
    if-eqz p3, :cond_0

    .line 390
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, st:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, stationArray:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    .line 394
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v8, "Kuling"

    const-string v9, "Preferences: onCreate()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Preferences;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 123
    .local v4, launchIntent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 124
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 125
    const-string v8, "appWidgetId"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    .line 127
    const-string v8, "STATION_NAME"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    .line 128
    const-string v8, "Kuling"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Preferences: onCreate() appwidgetId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, cancelResultValue:Landroid/content/Intent;
    const-string v8, "appWidgetId"

    iget v9, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/cocmoc/kulinglite/Preferences;->setResult(ILandroid/content/Intent;)V

    .line 147
    .end local v0           #cancelResultValue:Landroid/content/Intent;
    :goto_0
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/cocmoc/kulinglite/Preferences;->setContentView(I)V

    .line 150
    const-string v8, "KulingPrefs"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/cocmoc/kulinglite/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    .local v1, config:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Preferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, id:Ljava/lang/String;
    new-instance v6, Lcom/cocmoc/kulinglite/RegisterHelper;

    invoke-direct {v6, v1, v3}, Lcom/cocmoc/kulinglite/RegisterHelper;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 155
    .local v6, registerHelper:Lcom/cocmoc/kulinglite/RegisterHelper;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/cocmoc/kulinglite/RegisterHelper;->isRegistered(Z)Ljava/lang/String;

    .line 159
    const-string v8, "UpdateRate-%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x708

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;

    .line 160
    const/high16 v8, 0x7f08

    invoke-virtual {p0, v8}, Lcom/cocmoc/kulinglite/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTextView:Landroid/widget/TextView;

    .line 161
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTextView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTag2:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->updateRateTextView:Landroid/widget/TextView;

    new-instance v9, Lcom/cocmoc/kulinglite/Preferences$3;

    invoke-direct {v9, p0}, Lcom/cocmoc/kulinglite/Preferences$3;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const-string v8, "TextColor-1"

    const/16 v9, 0x3e7

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I

    .line 172
    const-string v8, "TextColor-2"

    const/16 v9, 0x3e7

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I

    .line 173
    iget v8, p0, Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 174
    const-string v8, "Light"

    iput-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;

    .line 176
    :cond_0
    const v8, 0x7f080001

    invoke-virtual {p0, v8}, Lcom/cocmoc/kulinglite/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->textColorTextView:Landroid/widget/TextView;

    .line 177
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->textColorTextView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->temaTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->textColorTextView:Landroid/widget/TextView;

    new-instance v9, Lcom/cocmoc/kulinglite/Preferences$4;

    invoke-direct {v9, p0}, Lcom/cocmoc/kulinglite/Preferences$4;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const-string v8, "Theme"

    iget-object v9, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    .line 188
    const v8, 0x7f080002

    invoke-virtual {p0, v8}, Lcom/cocmoc/kulinglite/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTextView:Landroid/widget/TextView;

    .line 189
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTextView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->themeTextView:Landroid/widget/TextView;

    new-instance v9, Lcom/cocmoc/kulinglite/Preferences$5;

    invoke-direct {v9, p0}, Lcom/cocmoc/kulinglite/Preferences$5;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const-string v8, "WeatherStation-%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Kugg\u00f6ren"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    .line 204
    const v8, 0x7f080003

    invoke-virtual {p0, v8}, Lcom/cocmoc/kulinglite/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTextView:Landroid/widget/TextView;

    .line 205
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTextView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTag:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v8, p0, Lcom/cocmoc/kulinglite/Preferences;->stationTextView:Landroid/widget/TextView;

    new-instance v9, Lcom/cocmoc/kulinglite/Preferences$6;

    invoke-direct {v9, p0}, Lcom/cocmoc/kulinglite/Preferences$6;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v8, 0x7f080005

    invoke-virtual {p0, v8}, Lcom/cocmoc/kulinglite/Preferences;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 223
    .local v7, saveButton:Landroid/widget/Button;
    new-instance v8, Lcom/cocmoc/kulinglite/Preferences$7;

    invoke-direct {v8, p0, v1}, Lcom/cocmoc/kulinglite/Preferences$7;-><init>(Lcom/cocmoc/kulinglite/Preferences;Landroid/content/SharedPreferences;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void

    .line 140
    .end local v1           #config:Landroid/content/SharedPreferences;
    .end local v3           #id:Ljava/lang/String;
    .end local v6           #registerHelper:Lcom/cocmoc/kulinglite/RegisterHelper;
    .end local v7           #saveButton:Landroid/widget/Button;
    .restart local p1
    :cond_1
    const-string v8, "Kuling"

    const-string v9, "Preferences: onCreate() extras == null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v5, myIntent:Landroid/content/Intent;
    const-string v8, "com.cocmoc.kulinglite"

    const-string v9, "com.cocmoc.kulinglite.InfoTabs"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v5}, Lcom/cocmoc/kulinglite/Preferences;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Preferences;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 281
    const-string v0, "Kuling"

    const-string v1, "Preferences: onCreateDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 326
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 285
    :pswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 286
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/cocmoc/kulinglite/Preferences;->mHour:I

    iget v4, p0, Lcom/cocmoc/kulinglite/Preferences;->mMinute:I

    const/4 v5, 0x1

    move-object v1, p0

    .line 285
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;

    const-string v1, "Light"

    if-ne v0, v1, :cond_0

    const/4 v6, 0x0

    .line 291
    .local v6, selected:I
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 293
    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 294
    const v1, 0x7f050004

    new-instance v2, Lcom/cocmoc/kulinglite/Preferences$8;

    invoke-direct {v2, p0}, Lcom/cocmoc/kulinglite/Preferences$8;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    const v1, 0x7f06001b

    new-instance v2, Lcom/cocmoc/kulinglite/Preferences$9;

    invoke-direct {v2, p0}, Lcom/cocmoc/kulinglite/Preferences$9;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 317
    const v1, 0x7f06001d

    new-instance v2, Lcom/cocmoc/kulinglite/Preferences$10;

    invoke-direct {v2, p0}, Lcom/cocmoc/kulinglite/Preferences$10;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 290
    .end local v6           #selected:I
    :cond_0
    const/4 v6, 0x1

    .restart local v6       #selected:I
    goto :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_0

    .line 338
    .end local p2
    :goto_0
    return-void

    .line 333
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/app/TimePickerDialog;

    .end local p2
    iget v0, p0, Lcom/cocmoc/kulinglite/Preferences;->mHour:I

    iget v1, p0, Lcom/cocmoc/kulinglite/Preferences;->mMinute:I

    invoke-virtual {p2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 414
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cocmoc/kulinglite/Preferences$11;

    invoke-direct {v1, p0}, Lcom/cocmoc/kulinglite/Preferences$11;-><init>(Lcom/cocmoc/kulinglite/Preferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    .local v0, background:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 439
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 443
    return-void
.end method

.method public registerCheck()Ljava/lang/String;
    .locals 6

    .prologue
    .line 404
    const-string v3, "Kuling"

    const-string v4, "Preferences: registerCheck() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Preferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Preferences;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "KulingPrefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, config:Landroid/content/SharedPreferences;
    new-instance v2, Lcom/cocmoc/kulinglite/RegisterHelper;

    invoke-direct {v2, v0, v1}, Lcom/cocmoc/kulinglite/RegisterHelper;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 408
    .local v2, registerHelper:Lcom/cocmoc/kulinglite/RegisterHelper;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cocmoc/kulinglite/RegisterHelper;->isRegistered(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
