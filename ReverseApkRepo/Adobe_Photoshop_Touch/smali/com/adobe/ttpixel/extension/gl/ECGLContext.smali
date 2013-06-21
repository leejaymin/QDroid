.class public Lcom/adobe/ttpixel/extension/gl/ECGLContext;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createContext(Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native destroyContext(Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native getLastGLErrorCode(Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;)I
.end method

.method public static native getStringInfo(Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;I)Ljava/lang/String;
.end method
