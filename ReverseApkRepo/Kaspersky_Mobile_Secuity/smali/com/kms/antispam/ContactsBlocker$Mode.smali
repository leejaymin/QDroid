.class public final enum Lcom/kms/antispam/ContactsBlocker$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DELETE:Lcom/kms/antispam/ContactsBlocker$Mode;

.field public static final enum OFF:Lcom/kms/antispam/ContactsBlocker$Mode;

.field public static final enum ON:Lcom/kms/antispam/ContactsBlocker$Mode;

.field public static final enum UNINSTALL:Lcom/kms/antispam/ContactsBlocker$Mode;

.field public static final enum UPDATE:Lcom/kms/antispam/ContactsBlocker$Mode;

.field private static final synthetic a:[Lcom/kms/antispam/ContactsBlocker$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/kms/antispam/ContactsBlocker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->UPDATE:Lcom/kms/antispam/ContactsBlocker$Mode;

    new-instance v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/kms/antispam/ContactsBlocker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->DELETE:Lcom/kms/antispam/ContactsBlocker$Mode;

    new-instance v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/kms/antispam/ContactsBlocker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->UNINSTALL:Lcom/kms/antispam/ContactsBlocker$Mode;

    new-instance v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    const-string v1, "ON"

    invoke-direct {v0, v1, v5}, Lcom/kms/antispam/ContactsBlocker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->ON:Lcom/kms/antispam/ContactsBlocker$Mode;

    new-instance v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v6}, Lcom/kms/antispam/ContactsBlocker$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->OFF:Lcom/kms/antispam/ContactsBlocker$Mode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kms/antispam/ContactsBlocker$Mode;

    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->UPDATE:Lcom/kms/antispam/ContactsBlocker$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->DELETE:Lcom/kms/antispam/ContactsBlocker$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->UNINSTALL:Lcom/kms/antispam/ContactsBlocker$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->ON:Lcom/kms/antispam/ContactsBlocker$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/antispam/ContactsBlocker$Mode;->OFF:Lcom/kms/antispam/ContactsBlocker$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->a:[Lcom/kms/antispam/ContactsBlocker$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antispam/ContactsBlocker$Mode;
    .locals 1
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/ContactsBlocker$Mode;

    return-object v0
.end method

.method public static values()[Lcom/kms/antispam/ContactsBlocker$Mode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kms/antispam/ContactsBlocker$Mode;->a:[Lcom/kms/antispam/ContactsBlocker$Mode;

    invoke-virtual {v0}, [Lcom/kms/antispam/ContactsBlocker$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antispam/ContactsBlocker$Mode;

    return-object v0
.end method
