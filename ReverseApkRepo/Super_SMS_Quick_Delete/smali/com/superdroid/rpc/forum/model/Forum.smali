.class public Lcom/superdroid/rpc/forum/model/Forum;
.super Ljava/lang/Object;
.source "Forum.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FOEUM_CATEGORY_UNDEFINED:I = 0x0

.field public static final FORUM_CATEGORY_BASKETBALL:I = 0x2

.field public static final FORUM_CATEGORY_FOOTBALL:I = 0x1

.field private static final serialVersionUID:J = 0x3976c317f805d35L


# instance fields
.field protected _adminUserName:Ljava/lang/String;

.field protected _category:I

.field protected _createTime:Ljava/util/Date;

.field protected _description:Ljava/lang/String;

.field protected _iconLink:Ljava/lang/String;

.field protected _id:J

.field protected _name:Ljava/lang/String;

.field protected _tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_id:J

    .line 41
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_id:J

    .line 45
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "adminID"
    .parameter "name"
    .parameter "description"
    .parameter "tag"
    .parameter "createTime"
    .parameter "icon"
    .parameter "category"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_id:J

    .line 50
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/Forum;->_adminUserName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/superdroid/rpc/forum/model/Forum;->_name:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/Forum;->_description:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/Forum;->_tag:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/superdroid/rpc/forum/model/Forum;->_createTime:Ljava/util/Date;

    .line 55
    iput-object p8, p0, Lcom/superdroid/rpc/forum/model/Forum;->_iconLink:Ljava/lang/String;

    .line 56
    iput p9, p0, Lcom/superdroid/rpc/forum/model/Forum;->_category:I

    .line 57
    return-void
.end method


# virtual methods
.method public getAdminUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_adminUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_category:I

    return v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Forum;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "adminUserID"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_adminUserName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .parameter "category"

    .prologue
    .line 120
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_category:I

    .line 121
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_createTime:Ljava/util/Date;

    .line 105
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_description:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setIconLink(Ljava/lang/String;)V
    .locals 0
    .parameter "iconLink"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_iconLink:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_id:J

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Forum;->_tag:Ljava/lang/String;

    .line 97
    return-void
.end method
