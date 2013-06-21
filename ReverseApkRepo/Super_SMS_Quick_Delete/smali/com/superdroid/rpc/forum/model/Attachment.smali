.class public Lcom/superdroid/rpc/forum/model/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# static fields
.field public static final ATTACHMENT_TYPE_APPLICATION:I = 0x1

.field public static final ATTACHMENT_TYPE_IMAGE:I = 0x0

.field public static final ATTACHMENT_TYPE_MUSIC:I = 0x2

.field public static final ATTCHMENT_TYPE_APPLICATIONSTR:Ljava/lang/String; = "application"

.field public static final ATTCHMENT_TYPE_IMAGESTR:Ljava/lang/String; = "image"

.field public static final ATTCHMENT_TYPE_MUSICSTR:Ljava/lang/String; = "music"

.field public static final ATTCHMENT_TYPE_SPLIT:Ljava/lang/String; = ":"


# instance fields
.field protected _param:Ljava/lang/String;

.field protected _type:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "param"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    .line 23
    iput-object p2, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_param:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static extractLinks(Ljava/lang/String;)Lcom/superdroid/rpc/forum/model/Attachment;
    .locals 7
    .parameter "links"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 72
    invoke-static {p0}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v5

    .line 95
    :goto_0
    return-object v4

    .line 75
    :cond_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 78
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, type:Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, param:Ljava/lang/String;
    new-instance v0, Lcom/superdroid/rpc/forum/model/Attachment;

    invoke-direct {v0}, Lcom/superdroid/rpc/forum/model/Attachment;-><init>()V

    .line 81
    .local v0, attch:Lcom/superdroid/rpc/forum/model/Attachment;
    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v0, v6}, Lcom/superdroid/rpc/forum/model/Attachment;->setType(I)V

    .line 91
    :goto_1
    invoke-virtual {v0, v2}, Lcom/superdroid/rpc/forum/model/Attachment;->setParam(Ljava/lang/String;)V

    move-object v4, v0

    .line 92
    goto :goto_0

    .line 83
    :cond_1
    const-string v4, "application"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/superdroid/rpc/forum/model/Attachment;->setType(I)V

    goto :goto_1

    .line 85
    :cond_2
    const-string v4, "music"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/superdroid/rpc/forum/model/Attachment;->setType(I)V

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 88
    goto :goto_0

    .end local v0           #attch:Lcom/superdroid/rpc/forum/model/Attachment;
    .end local v2           #param:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_4
    move-object v4, v5

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_param:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    return v0
.end method

.method public isApplication()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusic()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_param:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 44
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    const-string v0, ""

    .line 29
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    if-nez v1, :cond_0

    .line 30
    const-string v0, "image"

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_param:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 31
    :cond_0
    iget v1, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 32
    const-string v0, "application"

    goto :goto_0

    .line 33
    :cond_1
    iget v1, p0, Lcom/superdroid/rpc/forum/model/Attachment;->_type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 34
    const-string v0, "music"

    goto :goto_0

    .line 36
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method
