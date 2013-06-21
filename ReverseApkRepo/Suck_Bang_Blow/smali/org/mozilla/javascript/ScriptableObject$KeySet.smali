.class Lorg/mozilla/javascript/ScriptableObject$KeySet;
.super Ljava/util/AbstractSet;
.source "ScriptableObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0
    .parameter

    .prologue
    .line 3101
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3105
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3110
    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;-><init>(Lorg/mozilla/javascript/ScriptableObject$KeySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3135
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    #getter for: Lorg/mozilla/javascript/ScriptableObject;->count:I
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->access$000(Lorg/mozilla/javascript/ScriptableObject;)I

    move-result v0

    return v0
.end method
