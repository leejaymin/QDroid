.class public Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
.super Ljava/lang/Object;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiDrawableReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Bounds"
.end annotation


# static fields
.field public static final UNKNOWN:I = -0x1


# instance fields
.field private height:I

.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiDrawableReference;

.field private width:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 52
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->this$0:Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    iput v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    return v0
.end method

.method static synthetic access$002(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    return p1
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    return v0
.end method

.method static synthetic access$102(Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    return p1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    return v0
.end method
