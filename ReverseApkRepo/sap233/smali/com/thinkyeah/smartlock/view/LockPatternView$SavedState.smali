.class Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-object p2, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->a:Ljava/lang/String;

    iput p3, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->b:I

    iput-boolean p4, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->c:Z

    iput-boolean p5, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->d:Z

    iput-boolean p6, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->e:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/view/LockPatternView$SavedState;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
