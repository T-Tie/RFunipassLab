; ModuleID = '<stdin>'
source_filename = "/tmp/tmpu09qo3hl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %entry
  %r.0 = phi i32 [ 1, %entry ], [ %inc139, %for.inc138 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %r.0, %0
  br i1 %cmp, label %for.body, label %for.end140

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %0, 1
  %1 = zext i32 %add to i64
  %2 = call ptr @llvm.stacksave.p0()
  %3 = mul nuw i64 %1, %1
  %vla = alloca i32, i64 %3, align 16
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %i.0 = phi i32 [ 1, %for.body ], [ %inc12, %for.inc11 ]
  %cmp3 = icmp sle i32 %i.0, %0
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 1, %for.body4 ], [ %inc, %for.inc ]
  %cmp6 = icmp sle i32 %j.0, %0
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %idxprom = sext i32 %i.0 to i64
  %4 = mul nsw i64 %idxprom, %1
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %4
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom8
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %inc12 = add nsw i32 %i.0, 1
  br label %for.cond2, !llvm.loop !12

for.end13:                                        ; preds = %for.cond2
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc133, %for.end13
  %k.0 = phi i32 [ 1, %for.end13 ], [ %add91, %for.inc133 ]
  %number.0 = phi i32 [ 0, %for.end13 ], [ %add97, %for.inc133 ]
  %sub = sub nsw i32 %0, 1
  %cmp15 = icmp sle i32 %k.0, %sub
  br i1 %cmp15, label %for.body16, label %for.end135

for.body16:                                       ; preds = %for.cond14
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc50, %for.body16
  %s.0 = phi i32 [ %k.0, %for.body16 ], [ %inc51, %for.inc50 ]
  %cmp18 = icmp sle i32 %s.0, %0
  br i1 %cmp18, label %for.body19, label %for.end52

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %s.0 to i64
  %5 = mul nsw i64 %idxprom20, %1
  %arrayidx21 = getelementptr inbounds i32, ptr %vla, i64 %5
  %idxprom22 = sext i32 %k.0 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom22
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc36, %for.body19
  %min.0 = phi i32 [ %6, %for.body19 ], [ %min.1, %for.inc36 ]
  %t.0 = phi i32 [ %k.0, %for.body19 ], [ %inc37, %for.inc36 ]
  %cmp25 = icmp sle i32 %t.0, %0
  br i1 %cmp25, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond24
  %idxprom29 = sext i32 %t.0 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom29
  %7 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %7, %min.0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body26
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body26
  %min.1 = phi i32 [ %7, %if.then ], [ %min.0, %for.body26 ]
  br label %for.inc36

for.inc36:                                        ; preds = %if.end
  %inc37 = add nsw i32 %t.0, 1
  br label %for.cond24, !llvm.loop !13

for.end38:                                        ; preds = %for.cond24
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %for.end38
  %m.0 = phi i32 [ %k.0, %for.end38 ], [ %inc48, %for.inc47 ]
  %cmp40 = icmp sle i32 %m.0, %0
  br i1 %cmp40, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond39
  %idxprom44 = sext i32 %m.0 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %arrayidx21, i64 %idxprom44
  %8 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %sub46 = sub nsw i32 %8, %min.0
  store i32 %sub46, ptr %arrayidx45, align 4, !tbaa !5
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %inc48 = add nsw i32 %m.0, 1
  br label %for.cond39, !llvm.loop !14

for.end49:                                        ; preds = %for.cond39
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %inc51 = add nsw i32 %s.0, 1
  br label %for.cond17, !llvm.loop !15

for.end52:                                        ; preds = %for.cond17
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc88, %for.end52
  %h.0 = phi i32 [ %k.0, %for.end52 ], [ %inc89, %for.inc88 ]
  %cmp54 = icmp sle i32 %h.0, %0
  br i1 %cmp54, label %for.body55, label %for.end90

for.body55:                                       ; preds = %for.cond53
  %idxprom56 = sext i32 %k.0 to i64
  %9 = mul nsw i64 %idxprom56, %1
  %arrayidx57 = getelementptr inbounds i32, ptr %vla, i64 %9
  %idxprom58 = sext i32 %h.0 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %arrayidx57, i64 %idxprom58
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc74, %for.body55
  %w.0 = phi i32 [ %k.0, %for.body55 ], [ %inc75, %for.inc74 ]
  %min.2 = phi i32 [ %10, %for.body55 ], [ %min.3, %for.inc74 ]
  %cmp61 = icmp sle i32 %w.0, %0
  br i1 %cmp61, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond60
  %idxprom63 = sext i32 %w.0 to i64
  %11 = mul nsw i64 %idxprom63, %1
  %arrayidx64 = getelementptr inbounds i32, ptr %vla, i64 %11
  %arrayidx66 = getelementptr inbounds i32, ptr %arrayidx64, i64 %idxprom58
  %12 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %12, %min.2
  br i1 %cmp67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %for.body62
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %for.body62
  %min.3 = phi i32 [ %12, %if.then68 ], [ %min.2, %for.body62 ]
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %inc75 = add nsw i32 %w.0, 1
  br label %for.cond60, !llvm.loop !16

for.end76:                                        ; preds = %for.cond60
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc85, %for.end76
  %q.0 = phi i32 [ %k.0, %for.end76 ], [ %inc86, %for.inc85 ]
  %cmp78 = icmp sle i32 %q.0, %0
  br i1 %cmp78, label %for.body79, label %for.end87

for.body79:                                       ; preds = %for.cond77
  %idxprom80 = sext i32 %q.0 to i64
  %13 = mul nsw i64 %idxprom80, %1
  %arrayidx81 = getelementptr inbounds i32, ptr %vla, i64 %13
  %arrayidx83 = getelementptr inbounds i32, ptr %arrayidx81, i64 %idxprom58
  %14 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %sub84 = sub nsw i32 %14, %min.2
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  br label %for.inc85

for.inc85:                                        ; preds = %for.body79
  %inc86 = add nsw i32 %q.0, 1
  br label %for.cond77, !llvm.loop !17

for.end87:                                        ; preds = %for.cond77
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %inc89 = add nsw i32 %h.0, 1
  br label %for.cond53, !llvm.loop !18

for.end90:                                        ; preds = %for.cond53
  %add91 = add nsw i32 %k.0, 1
  %idxprom92 = sext i32 %add91 to i64
  %15 = mul nsw i64 %idxprom92, %1
  %arrayidx93 = getelementptr inbounds i32, ptr %vla, i64 %15
  %arrayidx96 = getelementptr inbounds i32, ptr %arrayidx93, i64 %idxprom92
  %16 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %add97 = add nsw i32 %number.0, %16
  %idxprom98 = sext i32 %k.0 to i64
  %17 = mul nsw i64 %idxprom98, %1
  %arrayidx99 = getelementptr inbounds i32, ptr %vla, i64 %17
  %arrayidx101 = getelementptr inbounds i32, ptr %arrayidx99, i64 %idxprom98
  %18 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  store i32 %18, ptr %arrayidx96, align 4, !tbaa !5
  %add108 = add nsw i32 %k.0, 2
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc130, %for.end90
  %v.0 = phi i32 [ %add108, %for.end90 ], [ %inc131, %for.inc130 ]
  %cmp110 = icmp sle i32 %v.0, %0
  br i1 %cmp110, label %for.body111, label %for.end132

for.body111:                                      ; preds = %for.cond109
  %idxprom114 = sext i32 %v.0 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %arrayidx99, i64 %idxprom114
  %19 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %arrayidx120 = getelementptr inbounds i32, ptr %arrayidx93, i64 %idxprom114
  store i32 %19, ptr %arrayidx120, align 4, !tbaa !5
  %20 = mul nsw i64 %idxprom114, %1
  %arrayidx122 = getelementptr inbounds i32, ptr %vla, i64 %20
  %arrayidx124 = getelementptr inbounds i32, ptr %arrayidx122, i64 %idxprom98
  %21 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx129 = getelementptr inbounds i32, ptr %arrayidx122, i64 %idxprom92
  store i32 %21, ptr %arrayidx129, align 4, !tbaa !5
  br label %for.inc130

for.inc130:                                       ; preds = %for.body111
  %inc131 = add nsw i32 %v.0, 1
  br label %for.cond109, !llvm.loop !19

for.end132:                                       ; preds = %for.cond109
  br label %for.inc133

for.inc133:                                       ; preds = %for.end132
  br label %for.cond14, !llvm.loop !20

for.end135:                                       ; preds = %for.cond14
  %call136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %number.0)
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call136, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.stackrestore.p0(ptr %2)
  br label %for.inc138

for.inc138:                                       ; preds = %for.end135
  %inc139 = add nsw i32 %r.0, 1
  br label %for.cond, !llvm.loop !21

for.end140:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !22
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #5 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !24
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !42
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !48
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !22
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !39, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !36, i64 216, !7, i64 224, !37, i64 225, !38, i64 232, !39, i64 240, !40, i64 248, !41, i64 256}
!26 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !31, i64 0, !27, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !31, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !31, i64 0}
!36 = !{!"p1 _ZTSSo", !31, i64 0}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 0}
!39 = !{!"p1 _ZTSSt5ctypeIcE", !31, i64 0}
!40 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!41 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!42 = !{!43, !7, i64 56}
!43 = !{!"_ZTSSt5ctypeIcE", !44, i64 0, !45, i64 16, !37, i64 24, !46, i64 32, !46, i64 40, !47, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!44 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!45 = !{!"p1 _ZTS15__locale_struct", !31, i64 0}
!46 = !{!"p1 int", !31, i64 0}
!47 = !{!"p1 short", !31, i64 0}
!48 = !{!7, !7, i64 0}
