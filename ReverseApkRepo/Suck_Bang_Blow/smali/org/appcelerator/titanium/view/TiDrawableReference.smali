.class public Lorg/appcelerator/titanium/view/TiDrawableReference;
.super Ljava/lang/Object;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;,
        Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final LCAT:Ljava/lang/String; = "TiDrawableReference"

.field private static final UNKNOWN:I = -0x1

.field private static boundsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blob:Lorg/appcelerator/titanium/TiBlob;

.field private file:Lorg/appcelerator/titanium/io/TiBaseFile;

.field private fileHelper:Lorg/appcelerator/titanium/util/TiFileHelper;

.field private oomOccurred:Z

.field private resourceId:I

.field private softContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/titanium/TiContext;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 70
    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    .line 72
    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->fileHelper:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 76
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 77
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    .line 78
    return-void
.end method

.method public static fromBlob(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "context"
    .parameter "blob"

    .prologue
    .line 114
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 115
    .local v0, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    .line 116
    return-object v0
.end method

.method public static fromDictionary(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "context"
    .parameter "dict"

    .prologue
    const-string v1, "media"

    .line 145
    const-string v0, "media"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "media"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v0, "TiDrawableReference"

    const-string v1, "Unknown drawable reference inside dictionary.  Expected key \'media\' to be a blob.  Returning null drawable reference"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Lorg/appcelerator/titanium/TiContext;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "context"
    .parameter "file"

    .prologue
    .line 138
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 139
    .local v0, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 140
    return-object v0
.end method

.method public static fromObject(Lorg/appcelerator/titanium/TiContext;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .parameter "context"
    .parameter "object"

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 176
    .end local p1
    :goto_0
    return-object v0

    .line 164
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    instance-of v0, p1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_2

    .line 167
    check-cast p1, Lorg/appcelerator/kroll/KrollDict;

    .end local p1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromDictionary(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 168
    .restart local p1
    :cond_2
    instance-of v0, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v0, :cond_3

    .line 169
    check-cast p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    .end local p1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 170
    .restart local p1
    :cond_3
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_4

    .line 171
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 173
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromResourceId(Lorg/appcelerator/titanium/TiContext;I)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 175
    .restart local p1
    :cond_5
    const-string v0, "TiDrawableReference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Returning null drawable reference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Lorg/appcelerator/titanium/TiContext;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromResourceId(Lorg/appcelerator/titanium/TiContext;I)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 107
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 108
    .local v0, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 109
    return-object v0
.end method

.method public static fromUrl(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 121
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v1, p0, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 122
    .local v1, ref:Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 129
    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 130
    iput v0, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 133
    .end local v0           #id:I
    :cond_0
    return-object v1
.end method

.method private getResourceDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    const/4 v3, 0x0

    .line 265
    :goto_0
    return-object v3

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 257
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 258
    .local v2, resources:Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    if-lez v3, :cond_1

    .line 260
    :try_start_0
    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    move-object v3, v0

    .line 265
    goto :goto_0

    .line 261
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 262
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext;

    .line 243
    .local v1, tiContext:Lorg/appcelerator/titanium/TiContext;
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getAndroidContext()Landroid/content/ContextWrapper;

    move-result-object v0

    .line 245
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 249
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;
    .locals 2

    .prologue
    .line 607
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->fileHelper:Lorg/appcelerator/titanium/util/TiFileHelper;

    if-nez v1, :cond_0

    .line 608
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 609
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->fileHelper:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 613
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->fileHelper:Lorg/appcelerator/titanium/util/TiFileHelper;

    return-object v1
.end method


# virtual methods
.method public calcSampleSize(II)I
    .locals 3
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 545
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peakBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v0

    .line 546
    .local v0, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    #getter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    invoke-static {v0}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$000(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I

    move-result v1

    #getter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I
    invoke-static {v0}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$100(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I

    move-result v2

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v1

    return v1
.end method

.method public calcSampleSize(IIII)I
    .locals 2
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 528
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 529
    :cond_0
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_1
    div-int v0, p1, p3

    div-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public calcSampleSize(Landroid/view/View;IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)I
    .locals 5
    .parameter "parent"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 565
    if-nez p4, :cond_1

    .line 566
    move v2, p2

    .line 567
    .local v2, destWidth:I
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 568
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 569
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 575
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    :goto_0
    if-nez p5, :cond_3

    .line 576
    int-to-float v3, p3

    int-to-float v4, p2

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 581
    .local v1, destHeight:I
    :goto_1
    invoke-virtual {p0, p2, p3, v2, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v3

    return v3

    .line 572
    .end local v1           #destHeight:I
    .end local v2           #destWidth:I
    :cond_1
    invoke-virtual {p4}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, p2

    .restart local v2       #destWidth:I
    :goto_2
    goto :goto_0

    .end local v2           #destWidth:I
    :cond_2
    invoke-virtual {p4, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    move v2, v3

    goto :goto_2

    .line 578
    .restart local v2       #destWidth:I
    :cond_3
    invoke-virtual {p5}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, p3

    .restart local v1       #destHeight:I
    :goto_3
    goto :goto_1

    .end local v1           #destHeight:I
    :cond_4
    invoke-virtual {p5, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    move v1, v3

    goto :goto_3
.end method

.method public calcSampleSize(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)I
    .locals 7
    .parameter "parent"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 597
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peakBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v6

    .line 598
    .local v6, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    #getter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    invoke-static {v6}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$000(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I

    move-result v2

    .line 599
    .local v2, srcWidth:I
    #getter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I
    invoke-static {v6}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$100(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I

    move-result v3

    .local v3, srcHeight:I
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 601
    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(Landroid/view/View;IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 100
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 101
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    check-cast p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .end local p1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const-string v8, "Problem closing stream: "

    const-string v7, "TiDrawableReference"

    .line 210
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 211
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 212
    const-string v4, "TiDrawableReference"

    const-string v4, "Could not open stream to get bitmap"

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 238
    :goto_0
    return-object v4

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 219
    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 220
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 221
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 225
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 233
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v4, v0

    .line 238
    goto :goto_0

    .line 226
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 227
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 228
    const-string v4, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 232
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v4

    .line 233
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 236
    :goto_3
    throw v4

    .line 234
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 235
    .local v1, e:Ljava/io/IOException;
    const-string v4, "TiDrawableReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem closing stream: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 234
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v1

    .line 235
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem closing stream: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 320
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "parent"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 339
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peakBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v7

    .line 340
    .local v7, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    #getter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    invoke-static {v7}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$000(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I

    move-result v16

    .line 341
    .local v16, srcWidth:I
    #getter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I
    invoke-static {v7}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$100(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I

    move-result v15

    .line 343
    .local v15, srcHeight:I
    if-lez v16, :cond_0

    if-gtz v15, :cond_1

    .line 344
    :cond_0
    const-string v17, "TiDrawableReference"

    const-string v18, "Bitmap bounds could not be determined.  If bitmap is loaded, it won\'t be scaled."

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    .line 407
    :goto_0
    return-object v17

    .line 348
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 349
    .local v12, is:Ljava/io/InputStream;
    if-nez v12, :cond_2

    .line 350
    const-string v17, "TiDrawableReference"

    const-string v18, "Could not open stream to get bitmap"

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v17, 0x0

    goto :goto_0

    .line 354
    :cond_2
    const/4 v5, 0x0

    .line 356
    .local v5, b:Landroid/graphics/Bitmap;
    if-nez p2, :cond_5

    .line 357
    move/from16 v10, v16

    .line 358
    .local v10, destWidth:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/TiContext;

    .line 359
    .local v8, context:Lorg/appcelerator/titanium/TiContext;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 360
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 361
    .local v14, parentWidth:I
    if-lez v14, :cond_3

    .line 364
    move v10, v14

    .line 371
    .end local v8           #context:Lorg/appcelerator/titanium/TiContext;
    .end local v14           #parentWidth:I
    :cond_3
    :goto_1
    if-nez p3, :cond_7

    .line 372
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move v0, v10

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 377
    .local v9, destHeight:I
    :goto_2
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 378
    .local v13, opts:Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v13

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 379
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v13

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v15

    move v3, v10

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v13

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    const/4 v6, 0x0

    .line 384
    .local v6, bTemp:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 385
    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 386
    if-nez v6, :cond_9

    .line 387
    const-string v17, "TiDrawableReference"

    const-string v18, "Decoded bitmap is null"

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    const/16 v17, 0x0

    .line 395
    if-eqz v6, :cond_4

    .line 396
    :try_start_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 397
    const/4 v6, 0x0

    .line 402
    :cond_4
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 403
    :catch_0
    move-exception v11

    .line 404
    .local v11, e:Ljava/io/IOException;
    const-string v18, "TiDrawableReference"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem closing stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 368
    .end local v6           #bTemp:Landroid/graphics/Bitmap;
    .end local v9           #destHeight:I
    .end local v10           #destWidth:I
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_5
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v10, v16

    .restart local v10       #destWidth:I
    :goto_3
    goto/16 :goto_1

    .end local v10           #destWidth:I
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v17

    move/from16 v10, v17

    goto :goto_3

    .line 374
    .restart local v10       #destWidth:I
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v17

    if-eqz v17, :cond_8

    move v9, v15

    .restart local v9       #destHeight:I
    :goto_4
    goto/16 :goto_2

    .end local v9           #destHeight:I
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v17

    move/from16 v9, v17

    goto :goto_4

    .line 390
    .restart local v6       #bTemp:Landroid/graphics/Bitmap;
    .restart local v9       #destHeight:I
    .restart local v13       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    const/16 v17, 0x1

    :try_start_5
    move-object v0, v6

    move v1, v10

    move v2, v9

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v5

    .line 395
    if-eqz v6, :cond_a

    .line 396
    :try_start_6
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 397
    const/4 v6, 0x0

    .line 402
    :cond_a
    :goto_5
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_6
    move-object/from16 v17, v5

    .line 407
    goto/16 :goto_0

    .line 391
    :catch_1
    move-exception v17

    move-object/from16 v11, v17

    .line 392
    .local v11, e:Ljava/lang/OutOfMemoryError;
    const/16 v17, 0x1

    :try_start_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 393
    const-string v17, "TiDrawableReference"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to load bitmap. Not enough memory: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 395
    if-eqz v6, :cond_a

    .line 396
    :try_start_9
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    const/4 v6, 0x0

    goto :goto_5

    .line 395
    .end local v11           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v17

    if-eqz v6, :cond_b

    .line 396
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    const/4 v6, 0x0

    :cond_b
    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 401
    .end local v6           #bTemp:Landroid/graphics/Bitmap;
    .end local v9           #destHeight:I
    .end local v10           #destWidth:I
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v17

    .line 402
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 405
    :goto_7
    throw v17

    .line 403
    .restart local v6       #bTemp:Landroid/graphics/Bitmap;
    .restart local v9       #destHeight:I
    .restart local v10       #destWidth:I
    .restart local v13       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v11

    .line 404
    .local v11, e:Ljava/io/IOException;
    const-string v17, "TiDrawableReference"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 403
    .end local v6           #bTemp:Landroid/graphics/Bitmap;
    .end local v9           #destHeight:I
    .end local v10           #destWidth:I
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v11

    .line 404
    .restart local v11       #e:Ljava/io/IOException;
    const-string v18, "TiDrawableReference"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem closing stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getBitmapAsync(Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;)V
    .locals 2
    .parameter "asyncTask"

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const-string v0, "TiDrawableReference"

    const-string v1, "getBitmapAsync called on non-network url.  Will attempt load."

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->load(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public getBitmapAsync(Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const-string v4, "TiDrawableReference"

    .line 415
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    const-string v1, "TiDrawableReference"

    const-string v1, "getBitmapAsync called on non-network url.  Will attempt load."

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiDownloadManager;->getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lorg/appcelerator/titanium/util/TiDownloadManager;->download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 422
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v1, "TiDrawableReference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI Invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    .end local v0           #b:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 288
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 289
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 292
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .end local v0           #b:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "parent"
    .parameter "destWidthDimension"
    .parameter "destHeightDimension"

    .prologue
    .line 273
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 274
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 280
    .end local v0           #b:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 8

    .prologue
    const-string v7, ": "

    const-string v6, "TiDrawableReference"

    .line 483
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 484
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    if-nez v0, :cond_0

    .line 486
    const-string v3, "TiDrawableReference"

    const-string v3, "TiContext has been GC\'d, so opening stream may not be possible."

    invoke-static {v6, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    const/4 v2, 0x0

    .line 490
    .local v2, stream:Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 491
    if-eqz v0, :cond_1

    .line 493
    :try_start_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 513
    :cond_1
    :goto_0
    return-object v2

    .line 494
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 495
    .local v1, e:Ljava/io/IOException;
    const-string v3, "TiDrawableReference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem opening stream with url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 499
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeFile()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v3, :cond_3

    .line 501
    :try_start_1
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 502
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 503
    .restart local v1       #e:Ljava/io/IOException;
    const-string v3, "TiDrawableReference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem opening stream from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/io/TiBaseFile;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 506
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeBlob()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_4

    .line 507
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 509
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    const/16 v1, 0x11

    .line 89
    .local v1, total:I
    const/16 v0, 0x25

    .line 90
    .local v0, constant:I
    mul-int/lit8 v2, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->ordinal()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 91
    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    add-int v1, v2, v3

    .line 92
    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 93
    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    add-int v1, v2, v3

    .line 94
    mul-int/lit8 v2, v1, 0x25

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    add-int v1, v2, v3

    .line 95
    return v1

    .line 91
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    .line 92
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 93
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isNetworkUrl()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeBlob()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeFile()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeNull()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeResourceId()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeUrl()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outOfMemoryOccurred()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    return v0
.end method

.method public peakBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 10

    .prologue
    const-string v9, "problem closing stream: "

    const-string v8, "TiDrawableReference"

    .line 443
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v3

    .line 444
    .local v3, hash:I
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-object v5, p0

    .line 472
    :goto_0
    return-object v5

    .line 447
    .restart local p0
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    .line 448
    .local v1, bounds:Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 453
    .local v4, stream:Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 454
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 456
    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 457
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #setter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I
    invoke-static {v1, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$102(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;I)I

    .line 458
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #setter for: Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    invoke-static {v1, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->access$002(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v0           #bfo:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    if-eqz v4, :cond_2

    .line 465
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    :cond_2
    :goto_2
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 472
    goto :goto_0

    .line 460
    :cond_3
    :try_start_2
    const-string v5, "TiDrawableReference"

    const-string v6, "Could not open stream for drawable, therefore bounds checking could not be completed"

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 463
    :catchall_0
    move-exception v5

    .line 464
    if-eqz v4, :cond_4

    .line 465
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 469
    :cond_4
    :goto_3
    throw v5

    .line 467
    :catch_0
    move-exception v2

    .line 468
    .local v2, e:Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem closing stream: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 467
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 468
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem closing stream: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
