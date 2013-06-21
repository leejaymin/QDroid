.class public Lcom/virtuallyabstract/eve/ApiInfo;
.super Landroid/app/Activity;
.source "ApiInfo.java"


# instance fields
.field apiDB:Lcom/virtuallyabstract/eve/ApiDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/ApiInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/ApiInfo;->loadFromFile()V

    return-void
.end method

.method private loadFromFile()V
    .locals 8

    .prologue
    const-string v5, "="

    const-string v7, "/sdcard/api.txt"

    const-string v5, "\""

    const-string v5, ""

    .line 47
    new-instance v5, Ljava/io/File;

    const-string v6, "/sdcard/api.txt"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sdcard/api.txt"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, line1:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, line2:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v5, v6

    .line 56
    .local v4, userID:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v1, v5, v6

    .line 57
    .local v1, key:Ljava/lang/String;
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 58
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v5, p0, Lcom/virtuallyabstract/eve/ApiInfo;->apiDB:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v5, v4, v1}, Lcom/virtuallyabstract/eve/ApiDBHelper;->populateCharList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/ApiInfo;->finish()V

    goto :goto_0

    .line 61
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #line1:Ljava/lang/String;
    .end local v3           #line2:Ljava/lang/String;
    .end local v4           #userID:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 66
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/ApiInfo;->finish()V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v5

    .line 66
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/ApiInfo;->finish()V

    .line 67
    throw v5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/ApiInfo;->setContentView(I)V

    .line 24
    new-instance v2, Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/ApiDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/ApiInfo;->apiDB:Lcom/virtuallyabstract/eve/ApiDBHelper;

    .line 25
    iget-object v2, p0, Lcom/virtuallyabstract/eve/ApiInfo;->apiDB:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/ApiDBHelper;->open()V

    .line 27
    const v2, 0x7f050007

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/ApiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 28
    .local v1, btnSubmit:Landroid/widget/Button;
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/ApiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, btnFromFile:Landroid/widget/Button;
    new-instance v2, Lcom/virtuallyabstract/eve/ApiInfo$1;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/ApiInfo$1;-><init>(Lcom/virtuallyabstract/eve/ApiInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance v2, Lcom/virtuallyabstract/eve/ApiInfo$2;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/ApiInfo$2;-><init>(Lcom/virtuallyabstract/eve/ApiInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/virtuallyabstract/eve/ApiInfo;->apiDB:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/ApiDBHelper;->close()V

    .line 74
    return-void
.end method

.method public populateApiDB()V
    .locals 5

    .prologue
    .line 35
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/virtuallyabstract/eve/ApiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 36
    .local v2, txtID:Landroid/widget/EditText;
    const v4, 0x7f050006

    invoke-virtual {p0, v4}, Lcom/virtuallyabstract/eve/ApiInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 37
    .local v3, txtKey:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/virtuallyabstract/eve/ApiInfo;->apiDB:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v4, v0, v1}, Lcom/virtuallyabstract/eve/ApiDBHelper;->populateCharList(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/ApiInfo;->finish()V

    .line 43
    return-void
.end method
