.class public abstract Lcom/stickycoding/rokon/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# static fields
.field public static final DEFAULT_LAYER_COUNT:I = 0x1

.field public static final DEFAULT_LAYER_OBJECT_COUNT:I = 0x20

.field public static final MAX_RUNNABLE:I = 0x18

.field protected static gameRunnable:[Ljava/lang/Runnable;

.field protected static gameRunnableTime:[J

.field protected static uiRunnable:[Ljava/lang/Runnable;

.field protected static uiRunnableTime:[J


# instance fields
.field public activity:Lcom/stickycoding/rokon/RokonActivity;

.field protected background:Lcom/stickycoding/rokon/Background;

.field protected contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

.field protected defaultLineWidth:F

.field protected forceTexture:[Lcom/stickycoding/rokon/Texture;

.field protected hasForcedTexture:Z

.field protected layer:[Lcom/stickycoding/rokon/Layer;

.field protected layerCount:I

.field protected loadedTextures:Z

.field protected newClearColor:[F

.field protected pausePhysics:Z

.field protected useContactListener:Z

.field protected useInvoke:Z

.field protected useNewClearColor:Z

.field protected usePhysics:Z

.field protected window:Lcom/stickycoding/rokon/Window;

.field protected world:Lcom/badlogic/gdx/physics/box2d/World;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 63
    new-array v0, v1, [Ljava/lang/Runnable;

    sput-object v0, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    .line 64
    new-array v0, v1, [Ljava/lang/Runnable;

    sput-object v0, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    .line 65
    new-array v0, v1, [J

    sput-object v0, Lcom/stickycoding/rokon/Scene;->uiRunnableTime:[J

    .line 66
    new-array v0, v1, [J

    sput-object v0, Lcom/stickycoding/rokon/Scene;->gameRunnableTime:[J

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 896
    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/stickycoding/rokon/Scene;-><init>(II)V

    .line 897
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "layerCount"

    .prologue
    .line 889
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/stickycoding/rokon/Scene;-><init>(II)V

    .line 890
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "layerCount"
    .parameter "layerObjectCount"

    .prologue
    const/4 v2, 0x0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    .line 53
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    .line 59
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    .line 61
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    .line 68
    const/16 v1, 0x80

    new-array v1, v1, [Lcom/stickycoding/rokon/Texture;

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    .line 69
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->hasForcedTexture:Z

    .line 1106
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->pausePhysics:Z

    .line 876
    iput p1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    .line 877
    new-array v1, p1, [Lcom/stickycoding/rokon/Layer;

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    .line 878
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 881
    return-void

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    new-instance v2, Lcom/stickycoding/rokon/Layer;

    invoke-direct {v2, p0, p2}, Lcom/stickycoding/rokon/Layer;-><init>(Lcom/stickycoding/rokon/Scene;I)V

    aput-object v2, v1, v0

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(I[I)V
    .locals 4
    .parameter "layerCount"
    .parameter "layerObjectCount"

    .prologue
    const/4 v2, 0x0

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    .line 53
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    .line 59
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    .line 61
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    .line 68
    const/16 v1, 0x80

    new-array v1, v1, [Lcom/stickycoding/rokon/Texture;

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    .line 69
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->hasForcedTexture:Z

    .line 1106
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->pausePhysics:Z

    .line 862
    iput p1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    .line 863
    new-array v1, p1, [Lcom/stickycoding/rokon/Layer;

    iput-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    .line 864
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 867
    return-void

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    new-instance v2, Lcom/stickycoding/rokon/Layer;

    aget v3, p2, v0

    invoke-direct {v2, p0, v3}, Lcom/stickycoding/rokon/Layer;-><init>(Lcom/stickycoding/rokon/Scene;I)V

    aput-object v2, v1, v0

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toastLong(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1185
    sput-object p0, Lcom/stickycoding/rokon/RokonActivity;->toastMessage:Ljava/lang/String;

    .line 1186
    const/4 v0, 0x1

    sput v0, Lcom/stickycoding/rokon/RokonActivity;->toastType:I

    .line 1187
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->toastHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1188
    return-void
.end method

.method public static toastShort(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 1174
    sput-object p0, Lcom/stickycoding/rokon/RokonActivity;->toastMessage:Ljava/lang/String;

    .line 1175
    sput v1, Lcom/stickycoding/rokon/RokonActivity;->toastType:I

    .line 1176
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->toastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1177
    return-void
.end method


# virtual methods
.method public add(ILcom/stickycoding/rokon/GameObject;)V
    .locals 3
    .parameter "layerIndex"
    .parameter "drawableObject"

    .prologue
    const-string v2, "Scene.add"

    .line 1066
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p1, v0, :cond_1

    .line 1067
    :cond_0
    const-string v0, "Scene.add"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried adding to an invalid Layer, layerIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximum is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-void

    .line 1070
    :cond_1
    if-nez p2, :cond_2

    .line 1071
    const-string v0, "Scene.add"

    const-string v0, "Tried adding a NULL DrawableObject"

    invoke-static {v2, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/stickycoding/rokon/Layer;->add(Lcom/stickycoding/rokon/GameObject;)V

    goto :goto_0
.end method

.method public add(Lcom/stickycoding/rokon/GameObject;)V
    .locals 2
    .parameter "drawableObject"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/Layer;->add(Lcom/stickycoding/rokon/GameObject;)V

    .line 1057
    return-void
.end method

.method protected checkForcedTextures()V
    .locals 3

    .prologue
    .line 89
    iget-boolean v1, p0, Lcom/stickycoding/rokon/Scene;->hasForcedTexture:Z

    if-eqz v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/stickycoding/rokon/Scene;->hasForcedTexture:Z

    .line 98
    .end local v0           #i:I
    :cond_0
    return-void

    .line 91
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/stickycoding/rokon/GLHelper;->checkTextureValid(Lcom/stickycoding/rokon/Texture;)V

    .line 93
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 956
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-lt v0, v1, :cond_0

    .line 959
    return-void

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/stickycoding/rokon/Layer;->clear()V

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearLayer(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 967
    if-lez p1, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p1, v0, :cond_1

    .line 968
    :cond_0
    const-string v0, "Scene.clearLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried clearing invalid layer ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Layer;->clear()V

    goto :goto_0
.end method

.method public forceTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 86
    :goto_1
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->forceTexture:[Lcom/stickycoding/rokon/Texture;

    aput-object p1, v1, v0

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stickycoding/rokon/Scene;->hasForcedTexture:Z

    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getActivity()Lcom/stickycoding/rokon/RokonActivity;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->activity:Lcom/stickycoding/rokon/RokonActivity;

    return-object v0
.end method

.method public getBackground()Lcom/stickycoding/rokon/Background;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->background:Lcom/stickycoding/rokon/Background;

    return-object v0
.end method

.method public getDefaultLineWidth()F
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    return v0
.end method

.method public getLayer(I)Lcom/stickycoding/rokon/Layer;
    .locals 3
    .parameter "index"

    .prologue
    .line 945
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p1, v0, :cond_1

    .line 946
    :cond_0
    const-string v0, "Scene.getLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried fetching invalid layer ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), maximum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v0, 0x0

    .line 949
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getRealX(F)F
    .locals 2
    .parameter "gameX"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v1, v1, Lcom/stickycoding/rokon/Window;->width:F

    div-float/2addr v0, v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1194
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, p1, v0

    goto :goto_0
.end method

.method public getRealX(FZ)F
    .locals 2
    .parameter "gameX"
    .parameter "ignoreWindow"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v1, v1, Lcom/stickycoding/rokon/Window;->width:F

    div-float/2addr v0, v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1218
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, p1, v0

    goto :goto_0
.end method

.method public getRealY(F)F
    .locals 2
    .parameter "gameY"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v1, v1, Lcom/stickycoding/rokon/Window;->height:F

    div-float/2addr v0, v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1202
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, p1, v0

    goto :goto_0
.end method

.method public getRealY(FZ)F
    .locals 2
    .parameter "gameY"
    .parameter "ignoreWindow"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    iget v1, v1, Lcom/stickycoding/rokon/Window;->height:F

    div-float/2addr v0, v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1233
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float v0, p1, v0

    goto :goto_0
.end method

.method public getWindow()Lcom/stickycoding/rokon/Window;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    if-nez v0, :cond_0

    .line 934
    const/4 v0, 0x0

    .line 935
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    goto :goto_0
.end method

.method public getWorld()Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method protected handleMultiTouch([F[FII[I)V
    .locals 26
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 589
    const/16 v18, 0x0

    .local v18, idx:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 762
    return-void

    .line 590
    :cond_0
    aget v12, p5, v18

    .line 591
    .local v12, id:I
    aget v13, p1, v18

    .line 592
    .local v13, _realX:F
    aget v14, p2, v18

    .line 593
    .local v14, _realY:F
    aget v6, p1, v18

    sget v7, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v21, v6, v7

    .line 594
    .local v21, realX:F
    aget v6, p2, v18

    sget v7, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v22, v6, v7

    .line 595
    .local v22, realY:F
    move/from16 v15, v21

    .line 596
    .local v15, gameX:F
    move/from16 v16, v22

    .line 597
    .local v16, gameY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 598
    aget v6, p1, v18

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v7

    int-to-float v7, v7

    div-float v24, v6, v7

    .line 599
    .local v24, xFraction:F
    aget v6, p2, v18

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v7

    int-to-float v7, v7

    div-float v25, v6, v7

    .line 600
    .local v25, yFraction:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v7, v0

    iget v7, v7, Lcom/stickycoding/rokon/Window;->width:F

    mul-float v7, v7, v24

    add-float v15, v6, v7

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v7, v0

    iget v7, v7, Lcom/stickycoding/rokon/Window;->height:F

    mul-float v7, v7, v25

    add-float v16, v6, v7

    .line 603
    .end local v24           #xFraction:F
    .end local v25           #yFraction:F
    :cond_1
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    move v6, v0

    move/from16 v0, v17

    move v1, v6

    if-lt v0, v1, :cond_3

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 708
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 709
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchReal(FFIII)V

    .line 710
    sparse-switch p3, :sswitch_data_0

    .line 589
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 604
    :cond_3
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Lcom/stickycoding/rokon/Layer;->maximumDrawableObjects:I

    move/from16 v0, v19

    move v1, v6

    if-lt v0, v1, :cond_4

    .line 603
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 606
    :cond_4
    move v4, v15

    .line 607
    .local v4, checkX:F
    move/from16 v5, v16

    .line 608
    .local v5, checkY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v17

    iget-boolean v6, v6, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    if-eqz v6, :cond_5

    .line 609
    move/from16 v4, v21

    .line 610
    move/from16 v5, v22

    .line 612
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v17

    iget-object v6, v6, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/stickycoding/rokon/Drawable;

    .line 613
    .local v20, object:Lcom/stickycoding/rokon/Drawable;
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->isTouchable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 614
    const/16 v23, 0x0

    .line 615
    .local v23, touched:Z
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/stickycoding/rokon/Sprite;

    move v6, v0

    if-eqz v6, :cond_8

    .line 616
    move-object/from16 v0, v20

    check-cast v0, Lcom/stickycoding/rokon/Sprite;

    move-object/from16 v23, v0

    .end local v23           #touched:Z
    move v0, v4

    move v1, v5

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/stickycoding/rokon/MathHelper;->pointInShape(FFLcom/stickycoding/rokon/Sprite;)Z

    move-result v23

    .line 620
    .restart local v23       #touched:Z
    :goto_4
    if-eqz v23, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 621
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 622
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouch(FFIII)V

    .line 623
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 626
    :cond_6
    sparse-switch p3, :sswitch_data_1

    .line 604
    .end local v23           #touched:Z
    :cond_7
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 618
    .restart local v23       #touched:Z
    :cond_8
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getX()F

    move-result v6

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getY()F

    move-result v7

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getWidth()F

    move-result v8

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getHeight()F

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/stickycoding/rokon/MathHelper;->pointInRect(FFFFFF)Z

    move-result v23

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 628
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 629
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 630
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_1
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 635
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 636
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 637
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 638
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_2
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 642
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 643
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchMove(FFIII)V

    .line 644
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchMove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 649
    :sswitch_3
    if-nez v18, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 650
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 651
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 652
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 658
    :sswitch_4
    if-nez v18, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 659
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 660
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 661
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 667
    :sswitch_5
    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 668
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 669
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 670
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 676
    :sswitch_6
    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 677
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 678
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 679
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 680
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 685
    :sswitch_7
    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 686
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 687
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 688
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 694
    :sswitch_8
    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 695
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 696
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 697
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .end local v4           #checkX:F
    .end local v5           #checkY:F
    .end local v19           #j:I
    .end local v20           #object:Lcom/stickycoding/rokon/Drawable;
    .end local v23           #touched:Z
    :sswitch_9
    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 712
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 713
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_2

    :sswitch_a
    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 716
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 717
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_2

    :sswitch_b
    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 720
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchMove(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 721
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchMoveReal(FFIII)V

    goto/16 :goto_2

    .line 724
    :sswitch_c
    if-nez v18, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 725
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 726
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_2

    .line 730
    :sswitch_d
    if-nez v18, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 731
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 732
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_2

    .line 736
    :sswitch_e
    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 737
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 738
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_2

    .line 742
    :sswitch_f
    const/4 v6, 0x1

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 743
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 744
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_2

    .line 748
    :sswitch_10
    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 749
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 750
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_2

    .line 754
    :sswitch_11
    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 755
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 756
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_2

    .line 710
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_a
        0x2 -> :sswitch_b
        0x5 -> :sswitch_c
        0x6 -> :sswitch_d
        0x105 -> :sswitch_e
        0x106 -> :sswitch_f
        0x205 -> :sswitch_10
        0x206 -> :sswitch_11
    .end sparse-switch

    .line 626
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x105 -> :sswitch_5
        0x106 -> :sswitch_6
        0x205 -> :sswitch_7
        0x206 -> :sswitch_8
    .end sparse-switch
.end method

.method protected handleSDK8MultiTouch([F[FII[I)V
    .locals 26
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 475
    const/16 v18, 0x0

    .local v18, idx:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 586
    return-void

    .line 476
    :cond_0
    aget v12, p5, v18

    .line 477
    .local v12, id:I
    aget v13, p1, v18

    .line 478
    .local v13, _realX:F
    aget v14, p2, v18

    .line 479
    .local v14, _realY:F
    aget v6, p1, v18

    sget v7, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v21, v6, v7

    .line 480
    .local v21, realX:F
    aget v6, p2, v18

    sget v7, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v22, v6, v7

    .line 481
    .local v22, realY:F
    move/from16 v15, v21

    .line 482
    .local v15, gameX:F
    move/from16 v16, v22

    .line 483
    .local v16, gameY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 484
    aget v6, p1, v18

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v7

    int-to-float v7, v7

    div-float v24, v6, v7

    .line 485
    .local v24, xFraction:F
    aget v6, p2, v18

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v7

    int-to-float v7, v7

    div-float v25, v6, v7

    .line 486
    .local v25, yFraction:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v7, v0

    iget v7, v7, Lcom/stickycoding/rokon/Window;->width:F

    mul-float v7, v7, v24

    add-float v15, v6, v7

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v7, v0

    iget v7, v7, Lcom/stickycoding/rokon/Window;->height:F

    mul-float v7, v7, v25

    add-float v16, v6, v7

    .line 489
    .end local v24           #xFraction:F
    .end local v25           #yFraction:F
    :cond_1
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    move v6, v0

    move/from16 v0, v17

    move v1, v6

    if-lt v0, v1, :cond_3

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 556
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 557
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchReal(FFIII)V

    .line 558
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    packed-switch v6, :pswitch_data_0

    .line 475
    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 490
    :cond_3
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Lcom/stickycoding/rokon/Layer;->maximumDrawableObjects:I

    move/from16 v0, v19

    move v1, v6

    if-lt v0, v1, :cond_4

    .line 489
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 492
    :cond_4
    move v4, v15

    .line 493
    .local v4, checkX:F
    move/from16 v5, v16

    .line 494
    .local v5, checkY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v17

    iget-boolean v6, v6, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    if-eqz v6, :cond_5

    .line 495
    move/from16 v4, v21

    .line 496
    move/from16 v5, v22

    .line 498
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v17

    iget-object v6, v6, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/stickycoding/rokon/Drawable;

    .line 499
    .local v20, object:Lcom/stickycoding/rokon/Drawable;
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->isTouchable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 500
    const/16 v23, 0x0

    .line 501
    .local v23, touched:Z
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/stickycoding/rokon/Sprite;

    move v6, v0

    if-eqz v6, :cond_8

    .line 502
    move-object/from16 v0, v20

    check-cast v0, Lcom/stickycoding/rokon/Sprite;

    move-object/from16 v23, v0

    .end local v23           #touched:Z
    move v0, v4

    move v1, v5

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/stickycoding/rokon/MathHelper;->pointInShape(FFLcom/stickycoding/rokon/Sprite;)Z

    move-result v23

    .line 506
    .restart local v23       #touched:Z
    :goto_4
    if-eqz v23, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 507
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    .line 508
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 511
    :cond_6
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    packed-switch v6, :pswitch_data_1

    .line 490
    .end local v23           #touched:Z
    :cond_7
    :goto_5
    :pswitch_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 504
    .restart local v23       #touched:Z
    :cond_8
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getX()F

    move-result v6

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getY()F

    move-result v7

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getWidth()F

    move-result v8

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getHeight()F

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/stickycoding/rokon/MathHelper;->pointInRect(FFFFFF)Z

    move-result v23

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 513
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 514
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 515
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 520
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 521
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 522
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 527
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 528
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchMove(FFIII)V

    .line 529
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchMove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 534
    :pswitch_5
    const v6, 0xff00

    and-int v6, v6, p3

    shr-int/lit8 v6, v6, 0x8

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 535
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 536
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 537
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 543
    :pswitch_6
    const v6, 0xff00

    and-int v6, v6, p3

    shr-int/lit8 v6, v6, 0x8

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 544
    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    move-object/from16 v7, v20

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    move/from16 v11, p4

    .line 545
    invoke-interface/range {v7 .. v12}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 546
    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v20 .. v20}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .end local v4           #checkX:F
    .end local v5           #checkY:F
    .end local v19           #j:I
    .end local v20           #object:Lcom/stickycoding/rokon/Drawable;
    .end local v23           #touched:Z
    :pswitch_7
    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 560
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 561
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 564
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 565
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 568
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchMove(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 569
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchMoveReal(FFIII)V

    goto/16 :goto_2

    .line 572
    :pswitch_a
    const v6, 0xff00

    and-int v6, v6, p3

    shr-int/lit8 v6, v6, 0x8

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 573
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 574
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_2

    .line 578
    :pswitch_b
    const v6, 0xff00

    and-int v6, v6, p3

    shr-int/lit8 v6, v6, 0x8

    move v0, v6

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v7, p0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, p3

    move/from16 v11, p4

    .line 579
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    move-object/from16 v7, p0

    move v8, v13

    move v9, v14

    move/from16 v10, p3

    move/from16 v11, p4

    .line 580
    invoke-virtual/range {v7 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_2

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 511
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected handleTouch([F[FII[I)V
    .locals 23
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 766
    invoke-virtual/range {p0 .. p5}, Lcom/stickycoding/rokon/Scene;->onTouchCustom([F[FII[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 853
    :goto_0
    return-void

    .line 767
    :cond_0
    sget v6, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_2

    .line 768
    sget v6, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_1

    .line 769
    invoke-virtual/range {p0 .. p5}, Lcom/stickycoding/rokon/Scene;->handleSDK8MultiTouch([F[FII[I)V

    goto :goto_0

    .line 772
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/stickycoding/rokon/Scene;->handleMultiTouch([F[FII[I)V

    goto :goto_0

    .line 775
    :cond_2
    const/4 v6, 0x0

    aget v6, p1, v6

    sget v7, Lcom/stickycoding/rokon/RokonActivity;->gameWidth:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v18, v6, v7

    .line 776
    .local v18, realX:F
    const/4 v6, 0x0

    aget v6, p2, v6

    sget v7, Lcom/stickycoding/rokon/RokonActivity;->gameHeight:F

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v19, v6, v7

    .line 777
    .local v19, realY:F
    move/from16 v13, v18

    .line 778
    .local v13, gameX:F
    move/from16 v14, v19

    .line 779
    .local v14, gameY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 780
    const/4 v6, 0x0

    aget v6, p1, v6

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getWidthPixels()I

    move-result v7

    int-to-float v7, v7

    div-float v21, v6, v7

    .line 781
    .local v21, xFraction:F
    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->getHeightPixels()I

    move-result v7

    int-to-float v7, v7

    div-float v22, v6, v7

    .line 782
    .local v22, yFraction:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Window;->getX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v7, v0

    iget v7, v7, Lcom/stickycoding/rokon/Window;->width:F

    mul-float v7, v7, v21

    add-float v13, v6, v7

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Window;->getY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    move-object v7, v0

    iget v7, v7, Lcom/stickycoding/rokon/Window;->height:F

    mul-float v7, v7, v22

    add-float v14, v6, v7

    .line 786
    .end local v21           #xFraction:F
    .end local v22           #yFraction:F
    :cond_3
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    move v6, v0

    if-lt v15, v6, :cond_4

    .line 837
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v7, v13

    move v8, v14

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouch(FFIII)V

    .line 838
    const/4 v6, 0x0

    aget v7, p1, v6

    const/4 v6, 0x0

    aget v8, p2, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchReal(FFIII)V

    .line 839
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 841
    :pswitch_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v7, v13

    move v8, v14

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchDown(FFIII)V

    .line 842
    const/4 v6, 0x0

    aget v7, p1, v6

    const/4 v6, 0x0

    aget v8, p2, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchDownReal(FFIII)V

    goto/16 :goto_0

    .line 787
    :cond_4
    const/16 v16, 0x0

    .local v16, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v15

    iget v6, v6, Lcom/stickycoding/rokon/Layer;->maximumDrawableObjects:I

    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_5

    .line 786
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 789
    :cond_5
    move v4, v13

    .line 790
    .local v4, checkX:F
    move v5, v14

    .line 791
    .local v5, checkY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v15

    iget-boolean v6, v6, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    if-eqz v6, :cond_6

    .line 792
    move/from16 v4, v18

    .line 793
    move/from16 v5, v19

    .line 795
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    move-object v6, v0

    aget-object v6, v6, v15

    iget-object v6, v6, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/stickycoding/rokon/Drawable;

    .line 796
    .local v17, object:Lcom/stickycoding/rokon/Drawable;
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->isTouchable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 797
    const/16 v20, 0x0

    .line 798
    .local v20, touched:Z
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/stickycoding/rokon/Sprite;

    move v6, v0

    if-eqz v6, :cond_9

    .line 799
    move-object/from16 v0, v17

    check-cast v0, Lcom/stickycoding/rokon/Sprite;

    move-object/from16 v20, v0

    .end local v20           #touched:Z
    move v0, v4

    move v1, v5

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/stickycoding/rokon/MathHelper;->pointInShape(FFLcom/stickycoding/rokon/Sprite;)Z

    move-result v20

    .line 803
    .restart local v20       #touched:Z
    :goto_3
    if-eqz v20, :cond_8

    .line 804
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    .line 805
    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    .line 808
    :cond_7
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, v17

    move v7, v4

    move v8, v5

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/stickycoding/rokon/Drawable;->onTouch(FFIII)V

    .line 809
    packed-switch p3, :pswitch_data_1

    .line 787
    .end local v20           #touched:Z
    :cond_8
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 801
    .restart local v20       #touched:Z
    :cond_9
    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getX()F

    move-result v6

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getY()F

    move-result v7

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getWidth()F

    move-result v8

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getHeight()F

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/stickycoding/rokon/MathHelper;->pointInRect(FFFFFF)Z

    move-result v20

    goto/16 :goto_3

    .line 811
    :pswitch_1
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V

    .line 812
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, v17

    move v7, v4

    move v8, v5

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/stickycoding/rokon/Drawable;->onTouchDown(FFIII)V

    .line 813
    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchDown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 818
    :pswitch_2
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V

    .line 819
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, v17

    move v7, v4

    move v8, v5

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/stickycoding/rokon/Drawable;->onTouchUp(FFIII)V

    .line 820
    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 821
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchUp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 825
    :pswitch_3
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move v8, v4

    move v9, v5

    move/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    .line 826
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, v17

    move v7, v4

    move v8, v5

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lcom/stickycoding/rokon/Drawable;->onTouchMove(FFIII)V

    .line 827
    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 828
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface/range {v17 .. v17}, Lcom/stickycoding/rokon/Drawable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_onTouchMove"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 845
    .end local v4           #checkX:F
    .end local v5           #checkY:F
    .end local v16           #j:I
    .end local v17           #object:Lcom/stickycoding/rokon/Drawable;
    .end local v20           #touched:Z
    :pswitch_4
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v7, v13

    move v8, v14

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchUp(FFIII)V

    .line 846
    const/4 v6, 0x0

    aget v7, p1, v6

    const/4 v6, 0x0

    aget v8, p2, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchUpReal(FFIII)V

    goto/16 :goto_0

    .line 849
    :pswitch_5
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v7, v13

    move v8, v14

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchMove(FFIII)V

    .line 850
    const/4 v6, 0x0

    aget v7, p1, v6

    const/4 v6, 0x0

    aget v8, p2, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/stickycoding/rokon/Scene;->onTouchMoveReal(FFIII)V

    goto/16 :goto_0

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 809
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public invoke(Lcom/stickycoding/rokon/Callback;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 395
    iget-object v0, p1, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p1, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;)Z

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-object v0, p1, Lcom/stickycoding/rokon/Callback;->parameterTypes:[Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p1, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    iget-object v1, p1, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p1, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    iget-object v1, p1, Lcom/stickycoding/rokon/Callback;->parameterTypes:[Ljava/lang/Class;

    iget-object v2, p1, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/String;)Z
    .locals 7
    .parameter "methodName"

    .prologue
    const/4 v6, 0x0

    .line 449
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v6

    :goto_0
    if-lt v4, v3, :cond_0

    move v2, v6

    .line 471
    :goto_1
    return v2

    .line 449
    :cond_0
    aget-object v1, v2, v4

    .line 450
    .local v1, m:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    .line 453
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 454
    const/4 v2, 0x1

    goto :goto_1

    .line 455
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 456
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Invoking, IllegalArgument"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v2, v6

    .line 458
    goto :goto_1

    .line 459
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 460
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "Invoking, IllegalAccess"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v2, v6

    .line 462
    goto :goto_1

    .line 463
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 464
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Invoking, IllegalTarget"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v2, v6

    .line 466
    goto :goto_1

    .line 449
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 7
    .parameter "methodName"
    .parameter "params"
    .parameter "paramValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v6

    :goto_0
    if-lt v4, v3, :cond_0

    move v2, v6

    .line 385
    :goto_1
    return v2

    .line 363
    :cond_0
    aget-object v1, v2, v4

    .line 364
    .local v1, m:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    :try_start_0
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 368
    const/4 v2, 0x1

    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Invoking, IllegalArgument"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v2, v6

    .line 372
    goto :goto_1

    .line 373
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "Invoking, IllegalAccess"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v2, v6

    .line 376
    goto :goto_1

    .line 377
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Invoking, IllegalTarget"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v2, v6

    .line 380
    goto :goto_1

    .line 363
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 7
    .parameter "methodName"
    .parameter "paramValues"

    .prologue
    const/4 v6, 0x0

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v6

    :goto_0
    if-lt v4, v3, :cond_0

    move v2, v6

    .line 438
    :goto_1
    return v2

    .line 418
    :cond_0
    aget-object v1, v2, v4

    .line 419
    .local v1, m:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    :try_start_0
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 422
    const/4 v2, 0x1

    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Invoking, IllegalArgument"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v2, v6

    .line 426
    goto :goto_1

    .line 427
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 428
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "Invoking, IllegalAccess"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v2, v6

    .line 430
    goto :goto_1

    .line 431
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Invoking, IllegalTarget"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v2, v6

    .line 434
    goto :goto_1

    .line 418
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public isPhysicsPaused()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->pausePhysics:Z

    return v0
.end method

.method public moveLayer(II)V
    .locals 6
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    const-string v5, ", maximum is "

    const-string v4, "Scene.moveLayer"

    .line 981
    if-ne p1, p2, :cond_1

    .line 982
    const-string v2, "Scene.moveLayer"

    const-string v2, "Tried moving a Layer to its own position, stupid"

    invoke-static {v4, v2}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    if-lez p1, :cond_2

    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p1, v2, :cond_3

    .line 986
    :cond_2
    const-string v2, "Scene.moveLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tried moving an invalid Layer, startIndex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maximum is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_3
    if-lez p2, :cond_4

    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p2, v2, :cond_5

    .line 990
    :cond_4
    const-string v2, "Scene.moveLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tried moving an invalid Layer, endIndex="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maximum is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 993
    :cond_5
    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v1, v2, p1

    .line 994
    .local v1, temporaryLayer:Lcom/stickycoding/rokon/Layer;
    if-ge p2, p1, :cond_6

    .line 995
    move v0, p2

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_7

    .line 998
    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aput-object v1, v2, p2

    .line 1000
    .end local v0           #i:I
    :cond_6
    if-le p2, p1, :cond_0

    .line 1001
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-lt v0, p2, :cond_8

    .line 1004
    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aput-object v1, v2, p2

    goto :goto_0

    .line 996
    :cond_7
    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1002
    :cond_8
    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    iget-object v3, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 1001
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public noPhysics()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    .line 326
    return-void
.end method

.method public onAnimationEnd(Lcom/stickycoding/rokon/DrawableObject;)V
    .locals 0
    .parameter "drawableObject"

    .prologue
    .line 257
    return-void
.end method

.method protected onEndScene()V
    .locals 0

    .prologue
    .line 1093
    return-void
.end method

.method public onFadeEnd(Lcom/stickycoding/rokon/DrawableObject;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 243
    return-void
.end method

.method public abstract onGameLoop()V
.end method

.method public abstract onKeyDown(I)V
.end method

.method public abstract onKeyUp(I)V
.end method

.method public onMoveEnd(Lcom/stickycoding/rokon/DimensionalObject;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 250
    return-void
.end method

.method public abstract onPause()V
.end method

.method public onPostDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 219
    return-void
.end method

.method public onPreDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 213
    return-void
.end method

.method public abstract onReady()V
.end method

.method public abstract onResume()V
.end method

.method protected onSetScene()V
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->loadedTextures:Z

    .line 1088
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    iput-object v0, p0, Lcom/stickycoding/rokon/Scene;->activity:Lcom/stickycoding/rokon/RokonActivity;

    .line 1089
    return-void
.end method

.method public onTouch(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 265
    return-void
.end method

.method public onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V
    .locals 0
    .parameter "object"
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 262
    return-void
.end method

.method public onTouchCustom([F[FII[I)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchDown(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 263
    return-void
.end method

.method public onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V
    .locals 0
    .parameter "object"
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 259
    return-void
.end method

.method public onTouchDownReal(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 270
    return-void
.end method

.method public onTouchMove(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 264
    return-void
.end method

.method public onTouchMove(Lcom/stickycoding/rokon/Drawable;FFIII)V
    .locals 0
    .parameter "object"
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 261
    return-void
.end method

.method public onTouchMoveReal(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 271
    return-void
.end method

.method public onTouchReal(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 273
    return-void
.end method

.method public onTouchUp(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 266
    return-void
.end method

.method public onTouchUp(Lcom/stickycoding/rokon/Drawable;FFIII)V
    .locals 0
    .parameter "object"
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 260
    return-void
.end method

.method public onTouchUpReal(FFIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 272
    return-void
.end method

.method public onTrackballEvent(FFI)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "action"

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method protected onUIRunnables()V
    .locals 8

    .prologue
    .line 119
    sget-object v3, Lcom/stickycoding/rokon/RokonActivity;->runnableLock:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    .line 119
    :try_start_0
    monitor-exit v3

    .line 130
    return-void

    .line 121
    :cond_0
    sget-object v4, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/stickycoding/rokon/Time;->getDrawTicks()J

    move-result-wide v4

    sget-object v6, Lcom/stickycoding/rokon/Scene;->uiRunnableTime:[J

    aget-wide v6, v6, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 122
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 123
    .local v2, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "index"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 126
    iget-object v4, p0, Lcom/stickycoding/rokon/Scene;->activity:Lcom/stickycoding/rokon/RokonActivity;

    iget-object v4, v4, Lcom/stickycoding/rokon/RokonActivity;->executeRunnable:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public pausePhysics()V
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->pausePhysics:Z

    .line 1113
    return-void
.end method

.method public queueGame(JLjava/lang/Runnable;)Z
    .locals 6
    .parameter "delay"
    .parameter "runnable"

    .prologue
    const/4 v5, 0x1

    .line 179
    sget-object v1, Lcom/stickycoding/rokon/GameThread;->runnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 188
    :try_start_0
    monitor-exit v1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 181
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 182
    sget-object v2, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aput-object p3, v2, v0

    .line 183
    sget-object v2, Lcom/stickycoding/rokon/Scene;->gameRunnableTime:[J

    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v3

    add-long/2addr v3, p1

    aput-wide v3, v2, v0

    .line 184
    const/4 v2, 0x1

    sput-boolean v2, Lcom/stickycoding/rokon/GameThread;->hasRunnable:Z

    .line 185
    monitor-exit v1

    move v1, v5

    goto :goto_1

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public queueGame(Ljava/lang/Runnable;)Z
    .locals 6
    .parameter "runnable"

    .prologue
    const/4 v5, 0x1

    .line 159
    sget-object v1, Lcom/stickycoding/rokon/GameThread;->runnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 168
    :try_start_0
    monitor-exit v1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 161
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 162
    sget-object v2, Lcom/stickycoding/rokon/Scene;->gameRunnable:[Ljava/lang/Runnable;

    aput-object p1, v2, v0

    .line 163
    sget-object v2, Lcom/stickycoding/rokon/Scene;->gameRunnableTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 164
    const/4 v2, 0x1

    sput-boolean v2, Lcom/stickycoding/rokon/GameThread;->hasRunnable:Z

    .line 165
    monitor-exit v1

    move v1, v5

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public queueUI(JLjava/lang/Runnable;)Z
    .locals 5
    .parameter "delay"
    .parameter "runnable"

    .prologue
    .line 139
    sget-object v1, Lcom/stickycoding/rokon/RokonActivity;->runnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 147
    :try_start_0
    monitor-exit v1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 141
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 142
    sget-object v2, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aput-object p3, v2, v0

    .line 143
    sget-object v2, Lcom/stickycoding/rokon/Scene;->uiRunnableTime:[J

    invoke-static {}, Lcom/stickycoding/rokon/Time;->getDrawTicks()J

    move-result-wide v3

    add-long/2addr v3, p1

    aput-wide v3, v2, v0

    .line 144
    monitor-exit v1

    const/4 v1, 0x1

    goto :goto_1

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public queueUI(Ljava/lang/Runnable;)Z
    .locals 5
    .parameter "runnable"

    .prologue
    .line 106
    sget-object v1, Lcom/stickycoding/rokon/RokonActivity;->runnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 114
    :try_start_0
    monitor-exit v1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 108
    :cond_0
    sget-object v2, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 109
    sget-object v2, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aput-object p1, v2, v0

    .line 110
    sget-object v2, Lcom/stickycoding/rokon/Scene;->uiRunnableTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 111
    monitor-exit v1

    const/4 v1, 0x1

    goto :goto_1

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public remove(Lcom/stickycoding/rokon/DrawableObject;)V
    .locals 0
    .parameter "drawableObject"

    .prologue
    .line 1083
    invoke-virtual {p1}, Lcom/stickycoding/rokon/DrawableObject;->remove()V

    .line 1084
    return-void
.end method

.method public removeWindow()V
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    .line 927
    return-void
.end method

.method public removeWorld()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/stickycoding/rokon/Scene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 333
    sput-object v0, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    .line 335
    return-void
.end method

.method protected render()V
    .locals 3

    .prologue
    .line 1097
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-lt v1, v2, :cond_0

    .line 1104
    :goto_1
    return-void

    .line 1098
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/stickycoding/rokon/Layer;->render()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1101
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ERROR IN SCENE RENDER"

    invoke-static {v2}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public render(Lcom/stickycoding/rokon/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 290
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/stickycoding/rokon/RenderQueueManager;->add(Lcom/stickycoding/rokon/Drawable;Z)V

    .line 291
    return-void
.end method

.method public render(Lcom/stickycoding/rokon/Drawable;Z)V
    .locals 1
    .parameter "drawable"
    .parameter "useWindow"

    .prologue
    .line 286
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

    invoke-virtual {v0, p1, p2}, Lcom/stickycoding/rokon/RenderQueueManager;->add(Lcom/stickycoding/rokon/Drawable;Z)V

    .line 287
    return-void
.end method

.method public resumePhysics()V
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->pausePhysics:Z

    .line 1120
    return-void
.end method

.method public setBackground(Lcom/stickycoding/rokon/Background;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/stickycoding/rokon/Scene;->background:Lcom/stickycoding/rokon/Background;

    .line 1138
    iput-object p0, p1, Lcom/stickycoding/rokon/Background;->parentScene:Lcom/stickycoding/rokon/Scene;

    .line 1139
    return-void
.end method

.method public setClearColour(FFFF)V
    .locals 3
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 202
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    aput p2, v0, v2

    .line 203
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 204
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->newClearColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 205
    iput-boolean v2, p0, Lcom/stickycoding/rokon/Scene;->useNewClearColor:Z

    .line 206
    return-void
.end method

.method public setDefaultLineWidth(F)V
    .locals 0
    .parameter "lineWidth"

    .prologue
    .line 1156
    iput p1, p0, Lcom/stickycoding/rokon/Scene;->defaultLineWidth:F

    .line 1157
    return-void
.end method

.method public setLayer(ILcom/stickycoding/rokon/Layer;)V
    .locals 3
    .parameter "index"
    .parameter "layer"

    .prologue
    const-string v2, "Scene.setLayer"

    .line 1039
    if-nez p2, :cond_0

    .line 1040
    const-string v0, "Scene.setLayer"

    const-string v0, "Tried setting to a null Layer"

    invoke-static {v2, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :goto_0
    return-void

    .line 1043
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p1, v0, :cond_2

    .line 1044
    :cond_1
    const-string v0, "Scene.setLayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried setting an invalid Layer, index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximum is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public setWindow(Lcom/stickycoding/rokon/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 916
    const-string v0, "Scene.setWindow"

    const-string v1, "Tried setting a NULL Window"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_0
    iput-object p1, p0, Lcom/stickycoding/rokon/Scene;->window:Lcom/stickycoding/rokon/Window;

    goto :goto_0
.end method

.method public setWorld(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 1
    .parameter "world"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/stickycoding/rokon/Scene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 301
    sput-object p1, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    .line 303
    return-void
.end method

.method public stopInvoke()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    .line 350
    return-void
.end method

.method public switchLayers(II)V
    .locals 5
    .parameter "layer1"
    .parameter "layer2"

    .prologue
    const-string v4, ", maximum is "

    const-string v3, "Scene.switchLayers"

    .line 1015
    if-ne p1, p2, :cond_0

    .line 1016
    const-string v1, "Scene.switchLayers"

    const-string v1, "Tried switching the same Layer"

    invoke-static {v3, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_0
    return-void

    .line 1019
    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p1, v1, :cond_2

    .line 1020
    :cond_1
    const-string v1, "Scene.switchLayers"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried switch an invalid Layer, layer1="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :cond_2
    if-ltz p2, :cond_3

    iget v1, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    if-le p2, v1, :cond_4

    .line 1024
    :cond_3
    const-string v1, "Scene.switchLayers"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried switch an invalid Layer, layer2="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stickycoding/rokon/Scene;->layerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    :cond_4
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v0, v1, p1

    .line 1028
    .local v0, temporaryLayer:Lcom/stickycoding/rokon/Layer;
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    iget-object v2, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 1029
    iget-object v1, p0, Lcom/stickycoding/rokon/Scene;->layer:[Lcom/stickycoding/rokon/Layer;

    aput-object v0, v1, p2

    goto :goto_0
.end method

.method public useInvoke()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->useInvoke:Z

    .line 343
    return-void
.end method

.method public usePhysics()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Scene;->usePhysics:Z

    .line 319
    return-void
.end method
