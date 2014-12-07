.class public Lcom/oppo/preference/OppoSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "OppoSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoSwitchPreference$1;,
        Lcom/oppo/preference/OppoSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final PADDINGRIGHT:I

.field private mClickToggle:Z

.field private final mListener:Lcom/oppo/preference/OppoSwitchPreference$Listener;

.field private mPaddingLeft:I

.field private mSendClickAccessibilityEvent:Z

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;

.field private mSwitchView:Landroid/widget/CompoundButton;

.field private mTextColorSummary:Landroid/content/res/ColorStateList;

.field private mTextColorTitle:Landroid/content/res/ColorStateList;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/preference/OppoSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    const v0, 0xc010036

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v2, Lcom/oppo/preference/OppoSwitchPreference$Listener;

    invoke-direct {v2, p0, v4}, Lcom/oppo/preference/OppoSwitchPreference$Listener;-><init>(Lcom/oppo/preference/OppoSwitchPreference;Lcom/oppo/preference/OppoSwitchPreference$1;)V

    iput-object v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mListener:Lcom/oppo/preference/OppoSwitchPreference$Listener;

    .line 65
    iput-object v4, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    .line 66
    iput-object v4, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    .line 67
    iput-boolean v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mClickToggle:Z

    .line 68
    iput v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->PADDINGRIGHT:I

    .line 96
    sget-object v2, Loppo/R$styleable;->OppoPreferenceTextAppearance:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, b:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoSwitchPreference;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoSwitchPreference;->setSummaryTextColor(Landroid/content/res/ColorStateList;)V

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    sget-object v2, Loppo/R$styleable;->OppoSwitchPreference:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 105
    .local v1, c:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoSwitchPreference;->setClickToggle(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc050455

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mPaddingLeft:I

    .line 107
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/oppo/preference/OppoSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/oppo/preference/OppoSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSwitch()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 149
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 151
    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 152
    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    move-object v1, v0

    .line 158
    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/oppo/preference/OppoSwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoSwitchPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mListener:Lcom/oppo/preference/OppoSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 133
    iget-boolean v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mClickToggle:Z

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    instance-of v2, v2, Lcom/oppo/widget/OppoSwitch;

    if-eqz v2, :cond_1

    .line 135
    iget-object v1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSwitchView:Landroid/widget/CompoundButton;

    check-cast v1, Lcom/oppo/widget/OppoSwitch;

    .line 136
    .local v1, switchView:Lcom/oppo/widget/OppoSwitch;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoSwitch;->changeChecked()V

    .line 145
    .end local v1           #switchView:Lcom/oppo/widget/OppoSwitch;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/preference/OppoSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    .local v0, newValue:Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/preference/OppoSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 138
    .end local v0           #newValue:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 197
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 172
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    .line 173
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    const v4, 0xc0204c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_0

    .line 175
    iget v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mPaddingLeft:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 177
    :cond_0
    iget-boolean v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mClickToggle:Z

    if-nez v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    .local v1, titleView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 182
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mTextColorTitle:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    .local v0, summaryView:Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 187
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mTextColorSummary:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    .end local v0           #summaryView:Landroid/widget/TextView;
    .end local v1           #titleView:Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/oppo/preference/OppoSwitchPreference;->mView:Landroid/view/View;

    return-object v3
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/oppo/preference/OppoSwitchPreference;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 240
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 242
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 244
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 247
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/preference/OppoSwitchPreference;->mSendClickAccessibilityEvent:Z

    .line 248
    return-void
.end method

.method public setClickToggle(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mClickToggle:Z

    .line 233
    return-void
.end method

.method public setSummaryTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mTextColorSummary:Landroid/content/res/ColorStateList;

    .line 215
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/oppo/preference/OppoSwitchPreference;->mTextColorTitle:Landroid/content/res/ColorStateList;

    .line 206
    return-void
.end method
