.class final Lname/kunes/android/launcher/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/p;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/p;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/k;->a:Lname/kunes/android/launcher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/k;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->a(Lname/kunes/android/launcher/p;)V

    iget-object v0, p0, Lname/kunes/android/launcher/k;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->b(Lname/kunes/android/launcher/p;)V

    return-void
.end method
