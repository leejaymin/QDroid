.class public Lgnu/text/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field public static final BOOLEAN_OPTION:I = 0x1

.field public static final STRING_OPTION:I = 0x2

.field public static final UNKNOWN:Ljava/lang/String; = "unknown option name"


# instance fields
.field first:Lgnu/text/OptionInfo;

.field infoTable:Ljava/util/Hashtable;

.field last:Lgnu/text/OptionInfo;

.field previous:Lgnu/text/Options;

.field valueTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/text/Options;)V
    .locals 0
    .parameter "previous"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    .line 32
    return-void
.end method

.method private error(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 1
    .parameter "message"
    .parameter "messages"

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/16 v0, 0x65

    invoke-virtual {p2, v0, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 89
    return-void
.end method

.method static valueOf(Lgnu/text/OptionInfo;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "info"
    .parameter "argument"

    .prologue
    .line 65
    iget v0, p0, Lgnu/text/OptionInfo;->kind:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 67
    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    :goto_0
    return-object v0

    .line 73
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 80
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "kind"
    .parameter "documentation"

    .prologue
    .line 47
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 48
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    .line 51
    :cond_0
    new-instance v0, Lgnu/text/OptionInfo;

    invoke-direct {v0}, Lgnu/text/OptionInfo;-><init>()V

    .line 52
    .local v0, info:Lgnu/text/OptionInfo;
    iput-object p1, v0, Lgnu/text/OptionInfo;->key:Ljava/lang/String;

    .line 53
    iput p2, v0, Lgnu/text/OptionInfo;->kind:I

    .line 54
    iput-object p3, v0, Lgnu/text/OptionInfo;->documentation:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lgnu/text/Options;->first:Lgnu/text/OptionInfo;

    if-nez v1, :cond_2

    .line 56
    iput-object v0, p0, Lgnu/text/Options;->first:Lgnu/text/OptionInfo;

    .line 59
    :goto_0
    iput-object v0, p0, Lgnu/text/Options;->last:Lgnu/text/OptionInfo;

    .line 60
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void

    .line 49
    .end local v0           #info:Lgnu/text/OptionInfo;
    :cond_1
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate option key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .restart local v0       #info:Lgnu/text/OptionInfo;
    :cond_2
    iget-object v1, p0, Lgnu/text/Options;->last:Lgnu/text/OptionInfo;

    iput-object v0, v1, Lgnu/text/OptionInfo;->next:Lgnu/text/OptionInfo;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 172
    iget-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v1, v2

    .line 173
    .local v1, val:Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 180
    :goto_1
    return-object v2

    .line 172
    .end local v1           #val:Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 175
    .restart local v1       #val:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    invoke-virtual {v2, p1, p2}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/OptionInfo;

    move-result-object v0

    .line 178
    .local v0, info:Lgnu/text/OptionInfo;
    if-nez v0, :cond_3

    .line 179
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid option key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, p2

    .line 180
    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 200
    if-eqz p2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    .line 201
    .local v0, defaultObject:Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/text/Options;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 200
    .end local v0           #defaultObject:Ljava/lang/Boolean;
    .restart local p0
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_0
.end method

.method public getDoc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/OptionInfo;

    move-result-object v0

    .line 259
    .local v0, info:Lgnu/text/OptionInfo;
    if-nez p1, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 261
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lgnu/text/OptionInfo;->documentation:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Lgnu/text/OptionInfo;
    .locals 2
    .parameter "key"

    .prologue
    .line 160
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 161
    .local v0, info:Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lgnu/text/Options;->previous:Lgnu/text/Options;

    invoke-virtual {v1, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/OptionInfo;

    move-result-object v0

    .line 163
    .end local v0           #info:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lgnu/text/OptionInfo;

    return-object v0

    .line 160
    :cond_1
    iget-object v1, p0, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getLocal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 190
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public keys()Ljava/util/Vector;
    .locals 5

    .prologue
    .line 239
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 240
    .local v0, allKeys:Ljava/util/Vector;
    move-object v3, p0

    .local v3, options:Lgnu/text/Options;
    :goto_0
    if-eqz v3, :cond_2

    .line 242
    iget-object v4, v3, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    .line 244
    iget-object v4, v3, Lgnu/text/Options;->infoTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 245
    .local v1, e:Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 248
    .local v2, k:Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #k:Ljava/lang/Object;
    :cond_1
    iget-object v3, v3, Lgnu/text/Options;->previous:Lgnu/text/Options;

    goto :goto_0

    .line 253
    :cond_2
    return-object v0
.end method

.method public popOptionValues(Ljava/util/Vector;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x3

    if-ltz v0, :cond_0

    .line 228
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, oldValue:Ljava/lang/Object;
    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 231
    invoke-virtual {p0, v1, v2}, Lgnu/text/Options;->reset(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #oldValue:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public pushOptionValues(Ljava/util/Vector;)V
    .locals 6
    .parameter "options"

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 213
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 215
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 217
    .local v4, newValue:Ljava/lang/Object;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {p1, v4, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 218
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;)V

    move v1, v0

    .line 219
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 220
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #newValue:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "oldValue"

    .prologue
    .line 128
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    .line 130
    :cond_0
    if-nez p2, :cond_1

    .line 131
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "argument"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/OptionInfo;

    move-result-object v0

    .line 144
    .local v0, info:Lgnu/text/OptionInfo;
    if-nez v0, :cond_0

    .line 145
    const-string v2, "unknown option name"

    .line 155
    :goto_0
    return-object v2

    .line 146
    :cond_0
    invoke-static {v0, p2}, Lgnu/text/Options;->valueOf(Lgnu/text/OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 149
    iget v2, v0, Lgnu/text/OptionInfo;->kind:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value of option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be yes/no/true/false/on/off/1/0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    .line 153
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    .line 154
    :cond_2
    iget-object v2, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    .line 95
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "messages"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/OptionInfo;

    move-result-object v0

    .line 101
    .local v0, info:Lgnu/text/OptionInfo;
    if-nez v0, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid option key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lgnu/text/Options;->error(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    .line 123
    .end local p2
    :goto_0
    return-void

    .line 106
    .restart local p2
    :cond_0
    iget v1, v0, Lgnu/text/OptionInfo;->kind:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 108
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 109
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v0, p2}, Lgnu/text/Options;->valueOf(Lgnu/text/OptionInfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 110
    .restart local p2
    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value for option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be boolean or yes/no/true/false/on/off/1/0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lgnu/text/Options;->error(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    goto :goto_0

    .line 118
    :cond_2
    if-nez p2, :cond_3

    .line 119
    const-string p2, ""

    .line 120
    .end local p2
    :cond_3
    iget-object v1, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    if-nez v1, :cond_4

    .line 121
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    .line 122
    :cond_4
    iget-object v1, p0, Lgnu/text/Options;->valueTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
