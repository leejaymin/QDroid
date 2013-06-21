.class Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;
.super Ljava/lang/Exception;
.source "LicenseRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/zirconia/LicenseRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseRetrieverException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/samsung/zirconia/LicenseRetriever;


# direct methods
.method private constructor <init>(Lcom/samsung/zirconia/LicenseRetriever;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;->this$0:Lcom/samsung/zirconia/LicenseRetriever;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;)V

    return-void
.end method
