.class public Lcom/jjcgames/android/airhockey/TitleScreenActivity;
.super Landroid/app/Activity;
.source "TitleScreenActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final marketLink:Ljava/lang/String; = "market://search?q=pname:com.jjcgames.android.airhockey"


# instance fields
.field private movingOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/TitleScreenActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z

    return-void
.end method

.method static getLocalPrice(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "c"

    .prologue
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 31
    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, lang:Ljava/lang/String;
    const-string v5, "de"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "es"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "fr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    :cond_0
    new-instance v2, Ljava/util/Locale;

    .end local v2           #loc:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .end local v1           #lang:Ljava/lang/String;
    .restart local v2       #loc:Ljava/util/Locale;
    :cond_1
    invoke-static {v2}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 40
    .local v3, nf:Ljava/text/NumberFormat;
    :try_start_0
    const-class v5, Lcom/jjcgames/android/airhockey/R$string;

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "price_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/text/NumberFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 41
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 40
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 47
    .local v4, res:I
    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 42
    .end local v4           #res:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const v4, 0x7f07000a

    .line 44
    .restart local v4       #res:I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v12}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 56
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 58
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 61
    .local v1, demo:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 62
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.jjcgames.android.airhockey.demo"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :cond_0
    if-eqz v1, :cond_2

    const v6, 0x7f030002

    :goto_0
    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->setContentView(I)V

    .line 70
    :try_start_1
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 71
    .local v4, pi:Landroid/content/pm/PackageInfo;
    const v6, 0x7f09000a

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 72
    const v7, 0x7f070005

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 73
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v10}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 74
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 72
    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    if-eqz v1, :cond_3

    .line 80
    const v6, 0x7f090009

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 81
    new-instance v7, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;

    invoke-direct {v7, p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity$1;-><init>(Lcom/jjcgames/android/airhockey/TitleScreenActivity;)V

    .line 80
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v6, 0x7f090006

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    .local v0, b:Landroid/widget/Button;
    const v6, 0x7f070007

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getLocalPrice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {p0, v6, v7}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v6, Lcom/jjcgames/android/airhockey/TitleScreenActivity$2;

    invoke-direct {v6, p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity$2;-><init>(Lcom/jjcgames/android/airhockey/TitleScreenActivity;)V

    .line 99
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .end local v0           #b:Landroid/widget/Button;
    :goto_1
    return-void

    .line 63
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 64
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 67
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const v6, 0x7f030008

    goto :goto_0

    .line 75
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 76
    .local v3, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 109
    .end local v3           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const v6, 0x7f09002a

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 110
    new-instance v7, Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;

    invoke-direct {v7, p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity$3;-><init>(Lcom/jjcgames/android/airhockey/TitleScreenActivity;)V

    .line 109
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v6, 0x7f09002b

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 120
    new-instance v7, Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;

    invoke-direct {v7, p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity$4;-><init>(Lcom/jjcgames/android/airhockey/TitleScreenActivity;)V

    .line 119
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v6, 0x7f09002c

    invoke-virtual {p0, v6}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 132
    new-instance v7, Lcom/jjcgames/android/airhockey/TitleScreenActivity$5;

    invoke-direct {v7, p0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity$5;-><init>(Lcom/jjcgames/android/airhockey/TitleScreenActivity;)V

    .line 131
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z

    if-nez v0, :cond_0

    .line 147
    const-string v0, "state"

    invoke-virtual {p0, v0}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->deleteFile(Ljava/lang/String;)Z

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 157
    :try_start_0
    invoke-static {p0}, Lcom/jjcgames/android/airhockey/Game;->stateReader(Landroid/content/Context;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, activity:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 159
    :cond_0
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0           #activity:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 170
    .local v1, e:Ljava/io/IOException;
    const-string v3, "state"

    invoke-virtual {p0, v3}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->deleteFile(Ljava/lang/String;)Z

    .line 172
    .end local v1           #e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 161
    .restart local v0       #activity:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->movingOn:Z

    .line 165
    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/TitleScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 166
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 167
    .local v1, e:Landroid/content/ActivityNotFoundException;
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method
