.class public Lcom/superdroid/rpc/forum/model/UserRole;
.super Ljava/lang/Object;
.source "UserRole.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_TYPE_FORUM_LEVEL:J = 0x4L

.field public static final ACTION_TYPE_POST_LEVEL:J = 0x1L

.field public static final ACTION_TYPE_SYSTEM_LEVEL:J = 0x8L

.field public static final ACTION_TYPE_THREAD_LEVEL:J = 0x2L

.field protected static ROLE_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/superdroid/rpc/forum/model/UserRole;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_ROLE_ADMIN:Ljava/lang/String; = "admin"

.field public static final USER_ROLE_ADMIN_PERMISSION:J = 0x0L

.field public static final USER_ROLE_BROAD_ADMIN:Ljava/lang/String; = "broad admin"

.field public static final USER_ROLE_BROAD_ADMIN_PERMISSION:J = 0x0L

.field public static final USER_ROLE_REGISTERED:Ljava/lang/String; = "registered user"

.field public static final USER_ROLE_REGISTERED_PERMISSION:J = 0x0L

.field public static final USER_ROLE_UNREGISTERED:Ljava/lang/String; = "unregisted user"

.field public static final USER_ROLE_UNREGISTERED_PERMISSION:J = 0x1L

.field private static final serialVersionUID:J = 0x4d7582eff8eaf440L


# instance fields
.field protected _id:J

.field protected _roleName:Ljava/lang/String;

.field protected _rolePermission:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v1, 0x1

    const-string v12, "registered user"

    const-string v11, "broad admin"

    const-string v10, "admin"

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/superdroid/rpc/forum/model/UserRole;->ROLE_MAP:Ljava/util/HashMap;

    .line 38
    sget-object v6, Lcom/superdroid/rpc/forum/model/UserRole;->ROLE_MAP:Ljava/util/HashMap;

    const-string v7, "unregisted user"

    new-instance v0, Lcom/superdroid/rpc/forum/model/UserRole;

    .line 39
    const-string v3, "unregisted user"

    move-wide v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/superdroid/rpc/forum/model/UserRole;-><init>(JLjava/lang/String;J)V

    .line 38
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v6, Lcom/superdroid/rpc/forum/model/UserRole;->ROLE_MAP:Ljava/util/HashMap;

    const-string v0, "registered user"

    new-instance v0, Lcom/superdroid/rpc/forum/model/UserRole;

    .line 41
    const-string v3, "registered user"

    move-object v3, v12

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/superdroid/rpc/forum/model/UserRole;-><init>(JLjava/lang/String;J)V

    .line 40
    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v6, Lcom/superdroid/rpc/forum/model/UserRole;->ROLE_MAP:Ljava/util/HashMap;

    const-string v0, "broad admin"

    new-instance v0, Lcom/superdroid/rpc/forum/model/UserRole;

    .line 43
    const-string v3, "broad admin"

    move-object v3, v11

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/superdroid/rpc/forum/model/UserRole;-><init>(JLjava/lang/String;J)V

    .line 42
    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v6, Lcom/superdroid/rpc/forum/model/UserRole;->ROLE_MAP:Ljava/util/HashMap;

    const-string v0, "admin"

    new-instance v0, Lcom/superdroid/rpc/forum/model/UserRole;

    const-string v3, "admin"

    move-object v3, v10

    move-wide v4, v8

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/superdroid/rpc/forum/model/UserRole;-><init>(JLjava/lang/String;J)V

    .line 44
    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0
    .parameter "id"
    .parameter "roleName"
    .parameter "rolePermission"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_id:J

    .line 104
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_roleName:Ljava/lang/String;

    .line 105
    iput-wide p4, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    .line 106
    return-void
.end method

.method public static getRoleByName(Ljava/lang/String;)Lcom/superdroid/rpc/forum/model/UserRole;
    .locals 1
    .parameter "roleName"

    .prologue
    .line 55
    sget-object v0, Lcom/superdroid/rpc/forum/model/UserRole;->ROLE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/superdroid/rpc/forum/model/UserRole;

    return-object p0
.end method


# virtual methods
.method public canCreateGambleThread()Z
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateThread()Z
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCreateVoteThread()Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/UserRole;->canCreateThread()Z

    move-result v0

    return v0
.end method

.method public canDeleteOwnPost()Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/UserRole;->canPost()Z

    move-result v0

    return v0
.end method

.method public canDeleteThreadInOwnForum()Z
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canEditOwnPost()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/UserRole;->canPost()Z

    move-result v0

    return v0
.end method

.method public canEditOwnThread()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/UserRole;->canCreateThread()Z

    move-result v0

    return v0
.end method

.method public canPost()Z
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_id:J

    return-wide v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getRolePermission()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_id:J

    .line 114
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .parameter "roleName"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_roleName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setRolePermission(J)V
    .locals 0
    .parameter "rolePermission"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserRole;->_rolePermission:J

    .line 130
    return-void
.end method
