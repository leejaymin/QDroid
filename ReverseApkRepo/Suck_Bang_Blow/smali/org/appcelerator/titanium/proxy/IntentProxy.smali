.class public Lorg/appcelerator/titanium/proxy/IntentProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "IntentProxy.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiIntent"

.field public static final TYPE_ACTIVITY:I = 0x0

.field public static final TYPE_BROADCAST:I = 0x2

.field public static final TYPE_SERVICE:I = 0x1

.field protected static escapeChars:[C


# instance fields
.field protected intent:Landroid/content/Intent;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/appcelerator/titanium/proxy/IntentProxy;->escapeChars:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x5ct 0x0t
        0x2ft 0x0t
        0x20t 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x26t 0x0t
        0x40t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/content/Intent;)V
    .locals 1
    .parameter "tiContext"
    .parameter "intent"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    .line 47
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    .line 48
    return-void
.end method

.method protected static getURLClassName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "type"

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "Activity"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_1
    const-string v0, "Service"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_2
    const-string v0, "Broadcast"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "appendage"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 66
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 67
    .local v5, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 89
    .end local p0
    :goto_0
    return-object v7

    .line 69
    .restart local p0
    :cond_0
    const/4 v6, 0x0

    .line 70
    .local v6, start:I
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v7, "app:"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v11, :cond_1

    .line 71
    const/4 v6, 0x2

    .line 74
    :cond_1
    const-string v7, "_"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5, v6, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, className:Ljava/lang/String;
    const-string v7, ".js"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_1
    sget-object v0, Lorg/appcelerator/titanium/proxy/IntentProxy;->escapeChars:[C

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-char v2, v0, v3

    .line 86
    .local v2, escapeChar:C
    const/16 v7, 0x5f

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 82
    .end local v0           #arr$:[C
    .end local v2           #escapeChar:C
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 89
    .restart local v0       #arr$:[C
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 228
    if-eqz p1, :cond_1

    .line 229
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "TiIntent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    :cond_1
    return-void
.end method

.method public addFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 245
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 263
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 251
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 257
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "dict"

    .prologue
    const-string v12, "flags"

    const-string v11, "TiIntent"

    .line 94
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    .line 97
    const-string v9, "action"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v9, "url"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, url:Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, data:Ljava/lang/String;
    const-string v9, "className"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, className:Ljava/lang/String;
    const-string v9, "packageName"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, packageName:Ljava/lang/String;
    const-string v9, "type"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, type:Ljava/lang/String;
    const/4 v5, 0x0

    .line 105
    .local v5, flags:I
    const-string v9, "flags"

    invoke-virtual {p1, v12}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 106
    const-string v9, "flags"

    invoke-static {p1, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v5

    .line 107
    sget-boolean v9, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v9, :cond_0

    .line 108
    const-string v9, "TiIntent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting flags: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    :goto_0
    if-eqz v0, :cond_2

    .line 116
    sget-boolean v9, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v9, :cond_1

    .line 117
    const-string v9, "TiIntent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_2
    if-eqz v6, :cond_4

    .line 123
    sget-boolean v9, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v9, :cond_3

    .line 124
    const-string v9, "TiIntent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :cond_4
    if-eqz v8, :cond_6

    .line 130
    sget-boolean v9, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v9, :cond_5

    .line 131
    const-string v9, "TiIntent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating intent for JS Activity/Service @ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v9

    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    invoke-static {v8, v10}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    :cond_6
    if-eqz v2, :cond_8

    .line 138
    if-eqz v6, :cond_d

    .line 139
    sget-boolean v9, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v9, :cond_7

    .line 140
    const-string v9, "TiIntent"

    const-string v9, "Both className and packageName set, using intent.setClassName(packageName, className"

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_7
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_8
    :goto_1
    if-nez v7, :cond_9

    .line 156
    if-eqz v0, :cond_9

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 157
    const-string v7, "text/plain"

    .line 164
    :cond_9
    if-eqz v7, :cond_f

    .line 165
    sget-boolean v9, Lorg/appcelerator/titanium/proxy/IntentProxy;->DBG:Z

    if-eqz v9, :cond_a

    .line 166
    const-string v9, "TiIntent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_a
    if-eqz v3, :cond_e

    .line 169
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_b
    :goto_2
    return-void

    .line 112
    :cond_c
    const-string v9, "flags"

    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v12, v9, v10}, Lorg/appcelerator/titanium/proxy/IntentProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 145
    :cond_d
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 146
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 148
    .local v4, e:Ljava/lang/ClassNotFoundException;
    const-string v9, "TiIntent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to locate class for name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing class for name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 171
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :cond_e
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 173
    :cond_f
    if-eqz v3, :cond_b

    .line 174
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 290
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 183
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :goto_0
    return-void

    .line 185
    .restart local p2
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 187
    .restart local p2
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 189
    .restart local p2
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 191
    .restart local p2
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 195
    .restart local p2
    :cond_4
    const-string v0, "TiIntent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning unimplemented put conversion for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trying String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public putExtraUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "uri"

    .prologue
    .line 222
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 210
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 284
    iput p1, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    .line 285
    return-void
.end method
