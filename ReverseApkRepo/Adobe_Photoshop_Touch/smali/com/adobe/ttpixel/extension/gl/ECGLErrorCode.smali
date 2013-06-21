.class public Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;
.super Ljava/lang/Object;


# instance fields
.field private glErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;->glErrorCode:I

    return-void
.end method


# virtual methods
.method public getGLErrorCode()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/gl/ECGLErrorCode;->glErrorCode:I

    return v0
.end method
