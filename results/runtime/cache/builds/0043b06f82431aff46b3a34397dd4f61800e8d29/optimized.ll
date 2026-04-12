; ModuleID = '<stdin>'
source_filename = "/tmp/tmp290nbhih.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %a.0 = phi i32 [ undef, %entry ], [ %a.1, %for.inc53 ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc54, %for.inc53 ]
  %b.0 = phi i32 [ undef, %entry ], [ %b.1, %for.inc53 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %m1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %2
  br i1 %cmp4, label %if.end7, label %if.else

if.else:                                          ; preds = %for.body
  %cmp5 = icmp slt i32 %2, %1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6, %for.body
  %a.1 = phi i32 [ %1, %for.body ], [ %2, %if.then6 ], [ %a.0, %if.else ]
  %b.1 = phi i32 [ %2, %for.body ], [ %1, %if.then6 ], [ %b.0, %if.else ]
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %3, 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end7
  %rem9 = srem i32 %3, 100
  %cmp10 = icmp ne i32 %rem9, 0
  br i1 %cmp10, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end7
  %rem11 = srem i32 %3, 400
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %if.then13, label %if.else29

if.then13:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then13
  %m.0 = phi i32 [ %a.1, %if.then13 ], [ %inc, %for.inc ]
  %x.1 = phi i32 [ 0, %if.then13 ], [ %add18, %for.inc ]
  %cmp15 = icmp slt i32 %m.0, %b.1
  br i1 %cmp15, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond14
  switch i32 %m.0, label %sw.default [
    i32 1, label %for.inc
    i32 3, label %for.inc
    i32 5, label %for.inc
    i32 7, label %for.inc
    i32 8, label %for.inc
    i32 10, label %for.inc
    i32 12, label %for.inc
    i32 2, label %sw.bb17
  ]

sw.bb17:                                          ; preds = %for.body16
  br label %for.inc

sw.default:                                       ; preds = %for.body16
  br label %for.inc

for.inc:                                          ; preds = %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %for.body16, %sw.bb17, %sw.default
  %.sink1 = phi i32 [ 29, %sw.bb17 ], [ 30, %sw.default ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ], [ 31, %for.body16 ]
  %add18 = add nsw i32 %.sink1, %x.1
  %inc = add nsw i32 %m.0, 1
  br label %for.cond14, !llvm.loop !9

for.end:                                          ; preds = %for.cond14
  %rem20 = srem i32 %x.1, 7
  %cmp21 = icmp eq i32 %rem20, 0
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %for.end
  %call23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(4) @.str)
  br label %for.inc53

if.else25:                                        ; preds = %for.end
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(3) @.str.1)
  br label %for.inc53

if.else29:                                        ; preds = %lor.lhs.false
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc40, %if.else29
  %m.1 = phi i32 [ %a.1, %if.else29 ], [ %inc41, %for.inc40 ]
  %x.4 = phi i32 [ 0, %if.else29 ], [ %add36, %for.inc40 ]
  %cmp31 = icmp slt i32 %m.1, %b.1
  br i1 %cmp31, label %for.body32, label %for.end42

for.body32:                                       ; preds = %for.cond30
  switch i32 %m.1, label %sw.default37 [
    i32 1, label %for.inc40
    i32 3, label %for.inc40
    i32 5, label %for.inc40
    i32 7, label %for.inc40
    i32 8, label %for.inc40
    i32 10, label %for.inc40
    i32 12, label %for.inc40
    i32 2, label %sw.bb35
  ]

sw.bb35:                                          ; preds = %for.body32
  br label %for.inc40

sw.default37:                                     ; preds = %for.body32
  br label %for.inc40

for.inc40:                                        ; preds = %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %for.body32, %sw.bb35, %sw.default37
  %.sink = phi i32 [ 28, %sw.bb35 ], [ 30, %sw.default37 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ], [ 31, %for.body32 ]
  %add36 = add nsw i32 %.sink, %x.4
  %inc41 = add nsw i32 %m.1, 1
  br label %for.cond30, !llvm.loop !12

for.end42:                                        ; preds = %for.cond30
  %rem43 = srem i32 %x.4, 7
  %cmp44 = icmp eq i32 %rem43, 0
  br i1 %cmp44, label %if.then45, label %if.else48

if.then45:                                        ; preds = %for.end42
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(4) @.str)
  br label %for.inc53

if.else48:                                        ; preds = %for.end42
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(3) @.str.1)
  br label %for.inc53

for.inc53:                                        ; preds = %if.else25, %if.then22, %if.else48, %if.then45
  %call49.sink = phi ptr [ %call49, %if.else48 ], [ %call46, %if.then45 ], [ %call26, %if.else25 ], [ %call23, %if.then22 ]
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call49.sink, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc54 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
