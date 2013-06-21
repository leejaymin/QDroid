.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final LEVEL_FINISHED:Ljava/lang/String; = "finished"


# instance fields
.field protected ecglContectRef:Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

.field protected ecglErrorCode:Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;

.field protected ecglFilterRef:Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    new-instance v0, Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->ecglContectRef:Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    new-instance v0, Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->ecglFilterRef:Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->ecglContectRef:Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    return-object v0
.end method

.method public getEcglErrorCodeRef()Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->ecglErrorCode:Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;

    return-object v0
.end method

.method public getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->ecglFilterRef:Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "createContext"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnCreateContext;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnCreateContext;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "destroyContext"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnDestroyContext;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnDestroyContext;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getLastGLErrorCode"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnGetLastGLErrorCode;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnGetLastGLErrorCode;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getStringInfo"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnGetStringInfo;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnGetStringInfo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "createFilter"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnCreateFilter;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnCreateFilter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prepareTextureEmpty"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnPrepareTextureEmpty;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnPrepareTextureEmpty;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prepareTextureFromBitmapData"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnPrepareTextureFromBitmapData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnPrepareTextureFromBitmapData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updateTextureFromBitmapData"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnUpdateTextureFromBitmapData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnUpdateTextureFromBitmapData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setParamFloat"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetParamFloat;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetParamFloat;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setParamFloatMulti"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetParamFloatMulti;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetParamFloatMulti;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setParamInt"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetParamInt;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetParamInt;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setParamIntMulti"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetParamIntMulti;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetParamIntMulti;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "applyFilter"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnApplyFilter;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnApplyFilter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getShaderInfoLog"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnGetShaderInfoLog;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnGetShaderInfoLog;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getNumVertices"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnGetNumVertices;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnGetNumVertices;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setNumVertices"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetNumVertices;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetNumVertices;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setVertexAttribDataFloat"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetVertexAttribDataFloat;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetVertexAttribDataFloat;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clearVertexAttribData"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnClearVertexAttribData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnClearVertexAttribData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getVertexAttribDataRangeStart"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnGetVertexAttribDataRangeStart;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnGetVertexAttribDataRangeStart;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getVertexAttribDataRangeCount"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnGetVertexAttribDataRangeCount;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnGetVertexAttribDataRangeCount;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setVertexAttribDataRange"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetVertexAttribDataRange;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetVertexAttribDataRange;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setDrawMode"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetDrawMode;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetDrawMode;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enableVertexAttrib"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnEnableVertexAttrib;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnEnableVertexAttrib;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "destroyFilter"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnDestroyFilter;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnDestroyFilter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawArrays"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnDrawArrays;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnDrawArrays;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "readPixels"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnReadPixels;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnReadPixels;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clear"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnClear;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnClear;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setParamFloatMatrix"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnSetParamFloatMatrix;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnSetParamFloatMatrix;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "executeSequence"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnExecuteSequence;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnExecuteSequence;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asyncExecuteSequence"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnAsyncExecuteSequence;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnAsyncExecuteSequence;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asyncJoin"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnAsyncJoin;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnAsyncJoin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asyncInterrupt"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnAsyncInterrupt;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnAsyncInterrupt;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asyncReadPixels"

    new-instance v2, Lcom/adobe/ttpixel/extension/gl/FnAsyncReadPixels;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/gl/FnAsyncReadPixels;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected onAsyncCompletion(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finished"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
