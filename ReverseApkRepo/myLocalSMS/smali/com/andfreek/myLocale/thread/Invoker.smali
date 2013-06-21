.class public Lcom/andfreek/myLocale/thread/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static replyData:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private cr:Landroid/content/ContentResolver;

.field private detectLang:Z

.field private detectedLang:Ljava/lang/String;

.field private lang1:Ljava/lang/String;

.field private lang2:Ljava/lang/String;

.field private langKey:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private langVal:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageBean:[Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private realMessageLang:Ljava/lang/String;

.field private replyLang:Ljava/lang/String;

.field private replyMsg:Ljava/lang/String;

.field private sendMessage:Ljava/lang/String;

.field private sendReply:Z

.field private threadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "_lang1"
    .parameter "_lang2"
    .parameter "_msg"
    .parameter "_threadId"
    .parameter "_detectLang"
    .parameter "_sendReply"
    .parameter "_replyMsg"
    .parameter "_replyLang"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->messageBean:[Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    .line 62
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang1:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang2:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/andfreek/myLocale/thread/Invoker;->threadId:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/andfreek/myLocale/thread/Invoker;->detectLang:Z

    .line 67
    iput-boolean p6, p0, Lcom/andfreek/myLocale/thread/Invoker;->sendReply:Z

    .line 68
    iput-object p7, p0, Lcom/andfreek/myLocale/thread/Invoker;->replyMsg:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/andfreek/myLocale/thread/Invoker;->replyLang:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    .line 74
    invoke-direct {p0}, Lcom/andfreek/myLocale/thread/Invoker;->initValues()V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/andfreek/myLocale/thread/Invoker;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/andfreek/myLocale/thread/Invoker;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->number:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/andfreek/myLocale/thread/Invoker;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/andfreek/myLocale/thread/Invoker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private initValues()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "tl"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Chinese"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Czech"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Croatian"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Danish"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Dutch"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "English"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Filipino"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Finnish"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "French"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "German"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Indonesian"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Japanese"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Korean"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Italian"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Polish"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Portugese"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Russian"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Slovak"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    const-string v1, "Spanish"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 105
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    const-string v10, "mylocale_pref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 106
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 107
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "RAMES"

    const-string v10, "Inside of Invoker"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-boolean v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->detectLang:Z

    if-eqz v9, :cond_1

    .line 112
    :try_start_0
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    invoke-static {v9}, Lcom/andfreek/myLocale/thread/Translate;->detect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->detectedLang:Ljava/lang/String;

    .line 113
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->replyMsg:Ljava/lang/String;

    invoke-static {v9}, Lcom/andfreek/myLocale/thread/Translate;->detect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->realMessageLang:Ljava/lang/String;

    .line 114
    const-string v9, "langid"

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->detectedLang:Ljava/lang/String;

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    :goto_0
    iget-boolean v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->sendReply:Z

    if-eqz v9, :cond_0

    .line 123
    iget-object v5, p0, Lcom/andfreek/myLocale/thread/Invoker;->detectedLang:Ljava/lang/String;

    .line 128
    .local v5, realreplyLang:Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->replyMsg:Ljava/lang/String;

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->realMessageLang:Ljava/lang/String;

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->detectedLang:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/andfreek/myLocale/thread/Translate;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, transValue:Ljava/lang/String;
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "----111111---replyMsg="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->replyMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "----111111---tras="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->replyMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "----111111---replyData="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/andfreek/myLocale/thread/Invoker;->replyData:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/andfreek/myLocale/thread/Invoker$1;

    invoke-direct {v10, p0, v7}, Lcom/andfreek/myLocale/thread/Invoker$1;-><init>(Lcom/andfreek/myLocale/thread/Invoker;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .end local v5           #realreplyLang:Ljava/lang/String;
    .end local v7           #transValue:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 161
    .restart local v5       #realreplyLang:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 162
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception occured="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #realreplyLang:Ljava/lang/String;
    :cond_1
    const-string v8, ""

    .line 175
    .local v8, translatedMsg:Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_2
    sput-boolean v9, Lcom/andfreek/myLocale/thread/Translate;->proxyEnabled:Z

    .line 177
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "lang2="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang2:Ljava/lang/String;

    const-string v10, "Off"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 180
    iget-object v8, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    .line 198
    :goto_2
    const-string v9, "translatedData"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    :goto_3
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/andfreek/myLocale/db/DBManager;->isPopupEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 205
    const-string v9, "RAMES"

    const-string v10, "Getting ready to show popup"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Context="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    const-class v10, Lcom/andfreek/myLocale/activity/Popup;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v3, i:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->messageBean:[Ljava/lang/String;

    const/4 v10, 0x5

    aput-object v8, v9, v10

    .line 211
    const-string v9, "message_id"

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->messageBean:[Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 183
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    invoke-static {v9}, Lcom/andfreek/myLocale/thread/Translate;->detect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, detection:Ljava/lang/String;
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Deteciton="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    invoke-static {v10}, Lcom/andfreek/myLocale/thread/Translate;->detect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang2:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/andfreek/myLocale/thread/Translate;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 187
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "langKey.indexOf(detection)="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "langKey.indexOf(lang2)="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    iget-object v12, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "langKey size="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "langVal size="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    invoke-virtual {v11, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #detection:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->msg:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n------------------\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 192
    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->langVal:Ljava/util/Vector;

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->langKey:Ljava/util/Vector;

    iget-object v12, p0, Lcom/andfreek/myLocale/thread/Invoker;->lang2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 191
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, message:Ljava/lang/String;
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "translatedMsg="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",Msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",MessageId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/andfreek/myLocale/thread/Invoker;->messageBean:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v9, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/andfreek/myLocale/thread/Invoker;->messageBean:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v9, v10, v4}, Lcom/andfreek/myLocale/db/DBManager;->updateMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 200
    .end local v4           #message:Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 201
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "RAMES"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception occured="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 206
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 117
    .end local v8           #translatedMsg:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method

.method public setContectResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "_cr"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker;->cr:Landroid/content/ContentResolver;

    .line 100
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "_context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker;->context:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public setMessageBean([Ljava/lang/String;)V
    .locals 0
    .parameter "_messageBean"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker;->messageBean:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "_number"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker;->number:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSendMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "_sendMessage"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/andfreek/myLocale/thread/Invoker;->sendMessage:Ljava/lang/String;

    .line 95
    return-void
.end method
