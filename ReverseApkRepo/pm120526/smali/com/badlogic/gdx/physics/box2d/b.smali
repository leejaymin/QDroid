.class public final enum Lcom/badlogic/gdx/physics/box2d/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/badlogic/gdx/physics/box2d/b;

.field public static final enum b:Lcom/badlogic/gdx/physics/box2d/b;

.field public static final enum c:Lcom/badlogic/gdx/physics/box2d/b;

.field private static final synthetic e:[Lcom/badlogic/gdx/physics/box2d/b;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/b;

    const-string v1, "StaticBody"

    invoke-direct {v0, v1, v2, v2}, Lcom/badlogic/gdx/physics/box2d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/b;->a:Lcom/badlogic/gdx/physics/box2d/b;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/b;

    const-string v1, "KinematicBody"

    invoke-direct {v0, v1, v3, v3}, Lcom/badlogic/gdx/physics/box2d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/b;->b:Lcom/badlogic/gdx/physics/box2d/b;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/b;

    const-string v1, "DynamicBody"

    invoke-direct {v0, v1, v4, v4}, Lcom/badlogic/gdx/physics/box2d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/b;->c:Lcom/badlogic/gdx/physics/box2d/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/physics/box2d/b;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/b;->a:Lcom/badlogic/gdx/physics/box2d/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/b;->b:Lcom/badlogic/gdx/physics/box2d/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/b;->c:Lcom/badlogic/gdx/physics/box2d/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/b;->e:[Lcom/badlogic/gdx/physics/box2d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/badlogic/gdx/physics/box2d/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/physics/box2d/b;->d:I

    return v0
.end method
