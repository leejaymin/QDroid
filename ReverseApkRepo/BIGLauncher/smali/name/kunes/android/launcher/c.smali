.class public final Lname/kunes/android/launcher/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/sql/Date;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/c;->b:Landroid/content/Context;

    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lname/kunes/android/launcher/c;->a:Ljava/sql/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/sql/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lname/kunes/android/launcher/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lname/kunes/android/launcher/c;->a:Ljava/sql/Date;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const v0, 0x7f060056

    iget-object v1, p0, Lname/kunes/android/launcher/c;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f060057

    :cond_0
    iget-object v1, p0, Lname/kunes/android/launcher/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/launcher/c;->a:Ljava/sql/Date;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
