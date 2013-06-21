.class public abstract Lcom/scoreloop/client/android/core/settings/CommonSettings$TermsOfService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/settings/CommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TermsOfService"
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/scoreloop/client/android/core/controller/NullTermsOfServiceManager;

    sput-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$TermsOfService;->a:Ljava/lang/Class;

    .line 101
    const-class v0, Lcom/scoreloop/client/android/core/controller/StandardTermsOfServiceManager;

    sput-object v0, Lcom/scoreloop/client/android/core/settings/CommonSettings$TermsOfService;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
