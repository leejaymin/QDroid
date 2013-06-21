.class public Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "Ti2DMatrixBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "Ti2DMatrix"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.view.Ti2DMatrix"

.field private static final METHOD_invert:Ljava/lang/String; = "invert"

.field private static final METHOD_multiply:Ljava/lang/String; = "multiply"

.field private static final METHOD_rotate:Ljava/lang/String; = "rotate"

.field private static final METHOD_scale:Ljava/lang/String; = "scale"

.field private static final METHOD_translate:Ljava/lang/String; = "translate"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Ti2DMatrix"

.field private static final TAG:Ljava/lang/String; = "Ti2DMatrixBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 51
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "invert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "scale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "translate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "multiply"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 60
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "Ti2DMatrix"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "name"

    .prologue
    const-string v12, "translate"

    const-string v11, "scale"

    const-string v10, "rotate"

    const-string v9, "multiply"

    const-string v8, "invert"

    .line 64
    iget-object v6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 65
    .local v5, value:Ljava/lang/Object;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 227
    :goto_0
    return-object v6

    .line 75
    :cond_0
    const-string v6, "invert"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$1;

    const-string v6, "invert"

    invoke-direct {v0, p0, v8}, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$1;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;Ljava/lang/String;)V

    .line 93
    .local v0, invert_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v7, "invert"

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    .line 94
    goto :goto_0

    .line 97
    .end local v0           #invert_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v6, "scale"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    new-instance v3, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$2;

    const-string v6, "scale"

    invoke-direct {v3, p0, v11}, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$2;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;Ljava/lang/String;)V

    .line 121
    .local v3, scale_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v7, "scale"

    invoke-virtual {v6, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    .line 122
    goto :goto_0

    .line 125
    .end local v3           #scale_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v6, "rotate"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    new-instance v2, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$3;

    const-string v6, "rotate"

    invoke-direct {v2, p0, v10}, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$3;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;Ljava/lang/String;)V

    .line 149
    .local v2, rotate_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v7, "rotate"

    invoke-virtual {v6, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 150
    goto :goto_0

    .line 153
    .end local v2           #rotate_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v6, "translate"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 154
    new-instance v4, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$4;

    const-string v6, "translate"

    invoke-direct {v4, p0, v12}, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$4;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;Ljava/lang/String;)V

    .line 190
    .local v4, translate_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v7, "translate"

    invoke-virtual {v6, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 191
    goto :goto_0

    .line 194
    .end local v4           #translate_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v6, "multiply"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 195
    new-instance v1, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$5;

    const-string v6, "multiply"

    invoke-direct {v1, p0, v9}, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen$5;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;Ljava/lang/String;)V

    .line 222
    .local v1, multiply_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/Ti2DMatrixBindingGen;->bindings:Ljava/util/HashMap;

    const-string v7, "multiply"

    invoke-virtual {v6, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    .line 223
    goto :goto_0

    .line 227
    .end local v1           #multiply_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "org.appcelerator.titanium.view.Ti2DMatrix"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const-class v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "Ti2DMatrix"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method
