.class Lexam/Input/MemoryPower$Shape;
.super Ljava/lang/Object;
.source "MemoryPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/MemoryPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shape"
.end annotation


# static fields
.field static final CIRCLE:I = 0x1

.field static final RECT:I = 0x0

.field static final TRIANGLE:I = 0x2


# instance fields
.field color:I

.field rt:Landroid/graphics/Rect;

.field final synthetic this$0:Lexam/Input/MemoryPower;

.field what:I


# direct methods
.method constructor <init>(Lexam/Input/MemoryPower;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lexam/Input/MemoryPower$Shape;->this$0:Lexam/Input/MemoryPower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
