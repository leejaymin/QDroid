.class public final Lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/vending/licensing/Policy$LicenseResponse;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    return-object v0
.end method
