.class Lorg/mozilla/javascript/ScriptableObject$EntrySet;
.super Ljava/util/AbstractSet;
.source "ScriptableObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0
    .parameter

    .prologue
    .line 3037
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3040
    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;-><init>(Lorg/mozilla/javascript/ScriptableObject$EntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    #getter for: Lorg/mozilla/javascript/ScriptableObject;->count:I
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->access$000(Lorg/mozilla/javascript/ScriptableObject;)I

    move-result v0

    return v0
.end method
