; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqsv6yj09.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %word = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 dereferenceable(100) %word) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %entry
  %p.0 = phi i32 [ 0, %entry ], [ %p.1, %if.end67 ]
  %k.0 = phi i32 [ 0, %entry ], [ %k.1, %if.end67 ]
  %flag.0 = phi i32 [ 0, %entry ], [ %flag.1, %if.end67 ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(100) %word, i64 noundef 100)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.cond ]
  %p.1 = phi i32 [ %1, %for.body ], [ %p.0, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !8
  %cmp2.not = icmp eq i8 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp2.not, label %for.end, label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.body, %for.cond
  %2 = add i32 %p.1, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.end
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body5 ], [ 0, %for.end ]
  %flag.1 = phi i32 [ %spec.select, %for.body5 ], [ %flag.0, %for.end ]
  %exitcond30 = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond30, label %for.end14, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv26
  %3 = load i8, ptr %arrayidx7, align 1, !tbaa !9, !invariant.load !8
  %cmp9 = icmp eq i8 %3, 32
  %spec.select = select i1 %cmp9, i32 1, i32 %flag.1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond3, !llvm.loop !14

for.end14:                                        ; preds = %for.cond3
  %cmp15 = icmp eq i32 %flag.1, 0
  br i1 %cmp15, label %for.cond17.preheader, label %for.cond27

for.cond17.preheader:                             ; preds = %for.end14
  %4 = zext i32 %p.1 to i64
  %5 = add nuw nsw i64 %4, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc23
  %indvars.iv38 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next39, %for.inc23 ]
  %exitcond41 = icmp eq i64 %indvars.iv38, %5
  br i1 %exitcond41, label %if.end67, label %for.inc23

for.inc23:                                        ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv38
  %6 = load i8, ptr %arrayidx21, align 1, !tbaa !9, !invariant.load !8
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %6)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond17, !llvm.loop !15

for.cond27:                                       ; preds = %for.end14, %for.inc49
  %i.3 = phi i32 [ %dec, %for.inc49 ], [ %p.1, %for.end14 ]
  %k.2 = phi i32 [ %k.3, %for.inc49 ], [ %k.0, %for.end14 ]
  %7 = zext i32 %i.3 to i64
  %cmp28 = icmp sgt i32 %i.3, -1
  br i1 %cmp28, label %for.body29, label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.cond27
  br label %for.cond51

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %7
  %8 = load i8, ptr %arrayidx31, align 1, !tbaa !9, !invariant.load !8
  %cmp33.not = icmp eq i8 %8, 32
  br i1 %cmp33.not, label %for.cond37.preheader, label %if.then34

for.cond37.preheader:                             ; preds = %for.body29
  %add38 = add nsw i32 %k.2, %i.3
  br label %for.cond37

if.then34:                                        ; preds = %for.body29
  %inc35 = add nsw i32 %k.2, 1
  br label %for.inc49

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc44
  %indvars.iv31 = phi i64 [ %7, %for.cond37.preheader ], [ %indvars.iv.next32, %for.inc44 ]
  %9 = trunc nuw i64 %indvars.iv31 to i32
  %cmp39.not.not = icmp sgt i32 %add38, %9
  br i1 %cmp39.not.not, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond37
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %arrayidx42 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv.next32
  %10 = load i8, ptr %arrayidx42, align 1, !tbaa !9, !invariant.load !8
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %10)
  br label %for.cond37, !llvm.loop !16

for.end46:                                        ; preds = %for.cond37
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(2) @.str)
  br label %for.inc49

for.inc49:                                        ; preds = %if.then34, %for.end46
  %k.3 = phi i32 [ %inc35, %if.then34 ], [ 0, %for.end46 ]
  %dec = add nsw i32 %i.3, -1
  br label %for.cond27, !llvm.loop !17

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc64
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc64 ], [ 0, %for.cond51.preheader ]
  %exitcond37.not = icmp eq i64 %indvars.iv34, 100
  br i1 %exitcond37.not, label %if.end67, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx55 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv34
  %11 = load i8, ptr %arrayidx55, align 1, !tbaa !9, !invariant.load !8
  %cmp57.not = icmp eq i8 %11, 32
  br i1 %cmp57.not, label %if.end67, label %for.inc64

for.inc64:                                        ; preds = %for.body53
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %11)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond51, !llvm.loop !18

if.end67:                                         ; preds = %for.cond51, %for.body53, %for.cond17
  %k.1 = phi i32 [ %k.0, %for.cond17 ], [ %k.2, %for.body53 ], [ %k.2, %for.cond51 ]
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %word) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
