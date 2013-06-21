.class public Lstericson/busybox/donate/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field private static instance:Lstericson/busybox/donate/App;


# instance fields
.field private appletadapter:Lstericson/busybox/donate/adapter/AppletAdapter;

.field private currentVersion:Ljava/lang/String;

.field private found:Ljava/lang/String;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private pathPosition:I

.field private popupView:Landroid/view/View;

.field private smartInstall:Z

.field private toggled:Z

.field private tuneadapter:Lstericson/busybox/donate/adapter/TuneAdapter;

.field private version:Ljava/lang/String;

.field private versionPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lstericson/busybox/donate/App;->instance:Lstericson/busybox/donate/App;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v1, p0, Lstericson/busybox/donate/App;->toggled:Z

    .line 17
    iput-boolean v1, p0, Lstericson/busybox/donate/App;->smartInstall:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/App;->path:Ljava/lang/String;

    .line 19
    const-string v0, "/system/bin"

    iput-object v0, p0, Lstericson/busybox/donate/App;->currentVersion:Ljava/lang/String;

    .line 20
    sget-object v0, Lstericson/busybox/donate/Constants;->versions:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lstericson/busybox/donate/App;->version:Ljava/lang/String;

    .line 21
    iput v1, p0, Lstericson/busybox/donate/App;->versionPosition:I

    .line 22
    iput v1, p0, Lstericson/busybox/donate/App;->pathPosition:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/App;->found:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static getInstance()Lstericson/busybox/donate/App;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lstericson/busybox/donate/App;->instance:Lstericson/busybox/donate/App;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lstericson/busybox/donate/App;

    invoke-direct {v0}, Lstericson/busybox/donate/App;-><init>()V

    sput-object v0, Lstericson/busybox/donate/App;->instance:Lstericson/busybox/donate/App;

    .line 33
    :cond_0
    sget-object v0, Lstericson/busybox/donate/App;->instance:Lstericson/busybox/donate/App;

    return-object v0
.end method


# virtual methods
.method public getAppletadapter()Lstericson/busybox/donate/adapter/AppletAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lstericson/busybox/donate/App;->appletadapter:Lstericson/busybox/donate/adapter/AppletAdapter;

    return-object v0
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lstericson/busybox/donate/App;->currentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lstericson/busybox/donate/App;->found:Ljava/lang/String;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lstericson/busybox/donate/App;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lstericson/busybox/donate/App;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathPosition()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lstericson/busybox/donate/App;->pathPosition:I

    return v0
.end method

.method public getPopupView()Landroid/view/View;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lstericson/busybox/donate/App;->popupView:Landroid/view/View;

    return-object v0
.end method

.method public getTuneadapter()Lstericson/busybox/donate/adapter/TuneAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lstericson/busybox/donate/App;->tuneadapter:Lstericson/busybox/donate/adapter/TuneAdapter;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lstericson/busybox/donate/App;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionPosition()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lstericson/busybox/donate/App;->versionPosition:I

    return v0
.end method

.method public isSmartInstall()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lstericson/busybox/donate/App;->smartInstall:Z

    return v0
.end method

.method public isToggled()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lstericson/busybox/donate/App;->toggled:Z

    return v0
.end method

.method public setAppletadapter(Lstericson/busybox/donate/adapter/AppletAdapter;)V
    .locals 0
    .parameter "appletadapter"

    .prologue
    .line 43
    iput-object p1, p0, Lstericson/busybox/donate/App;->appletadapter:Lstericson/busybox/donate/adapter/AppletAdapter;

    .line 44
    return-void
.end method

.method public setCurrentVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "currentVersion"

    .prologue
    .line 93
    iput-object p1, p0, Lstericson/busybox/donate/App;->currentVersion:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFound(Ljava/lang/String;)V
    .locals 0
    .parameter "found"

    .prologue
    .line 63
    iput-object p1, p0, Lstericson/busybox/donate/App;->found:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    if-eqz p1, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lstericson/busybox/donate/App;->itemList:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lstericson/busybox/donate/App;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lstericson/busybox/donate/App;->itemList:Ljava/util/List;

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 103
    iput-object p1, p0, Lstericson/busybox/donate/App;->path:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setPathPosition(I)V
    .locals 0
    .parameter "path_position"

    .prologue
    .line 83
    iput p1, p0, Lstericson/busybox/donate/App;->pathPosition:I

    .line 84
    return-void
.end method

.method public setPopupView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 138
    iput-object p1, p0, Lstericson/busybox/donate/App;->popupView:Landroid/view/View;

    .line 139
    return-void
.end method

.method public setSmartInstall(Z)V
    .locals 0
    .parameter "smartInstall"

    .prologue
    .line 123
    iput-boolean p1, p0, Lstericson/busybox/donate/App;->smartInstall:Z

    .line 124
    return-void
.end method

.method public setToggled(Z)V
    .locals 0
    .parameter "toggled"

    .prologue
    .line 133
    iput-boolean p1, p0, Lstericson/busybox/donate/App;->toggled:Z

    .line 134
    return-void
.end method

.method public setTuneadapter(Lstericson/busybox/donate/adapter/TuneAdapter;)V
    .locals 0
    .parameter "tuneadapter"

    .prologue
    .line 53
    iput-object p1, p0, Lstericson/busybox/donate/App;->tuneadapter:Lstericson/busybox/donate/adapter/TuneAdapter;

    .line 54
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 113
    iput-object p1, p0, Lstericson/busybox/donate/App;->version:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setVersionPosition(I)V
    .locals 0
    .parameter "version_position"

    .prologue
    .line 73
    iput p1, p0, Lstericson/busybox/donate/App;->versionPosition:I

    .line 74
    return-void
.end method
