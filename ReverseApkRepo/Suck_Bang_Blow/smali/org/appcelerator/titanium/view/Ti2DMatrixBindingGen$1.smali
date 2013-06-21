.class Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$1;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "Ti2DMatrixBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$1;->this$0:Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 83
    .local v0, __invert_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->invert(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-result-object v1

    .line 90
    .local v1, __retVal:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
