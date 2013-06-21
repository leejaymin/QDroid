.class Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$4;
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
    .line 154
    iput-object p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$4;->this$0:Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-class v12, Ljava/lang/Double;

    .line 158
    const/4 v0, 0x2

    const-string v1, "translate"

    invoke-static {p2, v0, v1}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 159
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    .line 160
    .local v7, __translate_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v8, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "x"

    invoke-direct {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 162
    .local v8, __x_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v8, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 164
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    aget-object v1, p2, v11

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v0, p1, v1, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 166
    .local v2, x:D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 168
    new-instance v9, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "y"

    invoke-direct {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 170
    .local v9, __y_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v9, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 172
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v0, p1, v1, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 174
    .local v4, y:D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 178
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->translate(Lorg/appcelerator/kroll/KrollInvocation;DD)Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-result-object v6

    .line 187
    .local v6, __retVal:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    invoke-virtual {v7, p1, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
