.class public final enum Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;
.super Ljava/lang/Enum;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/base/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum ADDRESS_BOOK:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum PAYMENT_FORTUMO:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum PAYMENT_GOOGLEMARKET:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

.field public static final enum PAYMENT_PAYPALX:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;


# instance fields
.field private _isEnabled:Z

.field private _propertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "ACHIEVEMENT"

    const-string v2, "ui.feature.achievement"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "ADDRESS_BOOK"

    const-string v2, "ui.feature.address_book"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ADDRESS_BOOK:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "CHALLENGE"

    const-string v2, "ui.feature.challenge"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    .line 55
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "NEWS"

    const-string v2, "ui.feature.news"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "PAYMENT"

    const-string v2, "ui.feature.payment"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "PAYMENT_FORTUMO"

    const/4 v2, 0x5

    const-string v3, "payment.fortumo"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_FORTUMO:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "PAYMENT_GOOGLEMARKET"

    const/4 v2, 0x6

    const-string v3, "payment.googlemarket"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_GOOGLEMARKET:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    .line 56
    new-instance v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    const-string v1, "PAYMENT_PAYPALX"

    const/4 v2, 0x7

    const-string v3, "payment.paypalx"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_PAYPALX:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ACHIEVEMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->ADDRESS_BOOK:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->CHALLENGE:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->NEWS:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_FORTUMO:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_GOOGLEMARKET:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT_PAYPALX:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->$VALUES:[Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter "propertyName"
    .parameter "preset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->_isEnabled:Z

    .line 62
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->_propertyName:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->_isEnabled:Z

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->$VALUES:[Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    return-object v0
.end method


# virtual methods
.method getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->_propertyName:Ljava/lang/String;

    return-object v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->_isEnabled:Z

    return v0
.end method

.method setEnabled(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->_isEnabled:Z

    .line 76
    return-void
.end method
