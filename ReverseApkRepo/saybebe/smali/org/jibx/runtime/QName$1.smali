.class Lorg/jibx/runtime/QName$1;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Lorg/jibx/runtime/IListItemDeserializer;


# instance fields
.field private final val$ictx:Lorg/jibx/runtime/IUnmarshallingContext;


# direct methods
.method constructor <init>(Lorg/jibx/runtime/IUnmarshallingContext;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jibx/runtime/QName$1;->val$ictx:Lorg/jibx/runtime/IUnmarshallingContext;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lorg/jibx/runtime/QName$1;->val$ictx:Lorg/jibx/runtime/IUnmarshallingContext;

    invoke-static {p1, v0}, Lorg/jibx/runtime/QName;->deserialize(Ljava/lang/String;Lorg/jibx/runtime/IUnmarshallingContext;)Lorg/jibx/runtime/QName;

    move-result-object v0

    return-object v0
.end method
