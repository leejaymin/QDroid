.class Lorg/jibx/runtime/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Lorg/jibx/runtime/IListItemDeserializer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1846
    return-object p1
.end method
