; ModuleID = '<stdin>'
source_filename = "/tmp/tmptaxgq2sg.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end29, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp ne i32 %and.i.i.i, 0
  %1 = load i32, ptr %a, align 16
  %cmp = icmp eq i32 %1, -1
  %or.cond = select i1 %cmp.i.not.i, i1 true, i1 %cmp
  br i1 %or.cond, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.body
  %2 = phi i32 [ %.pre, %for.body ], [ %1, %while.cond ]
  %indvars.iv16 = phi i32 [ %indvars.iv.next17, %for.body ], [ 0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %while.cond ]
  %cmp4.not = icmp eq i32 %2, 0
  br i1 %cmp4.not, label %for.cond8.preheader, label %for.body

for.cond8.preheader:                              ; preds = %for.cond
  %wide.trip.count22 = zext nneg i32 %indvars.iv16 to i64
  br label %for.cond8

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next17 = add nuw nsw i32 %indvars.iv16, 1
  %.pre = load i32, ptr %arrayidx6, align 4, !tbaa !21
  br label %for.cond, !llvm.loop !22

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc27
  %indvars.iv18 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next19, %for.inc27 ]
  %n.0 = phi i32 [ 0, %for.cond8.preheader ], [ %n.1, %for.inc27 ]
  %exitcond23 = icmp eq i64 %indvars.iv18, %wide.trip.count22
  br i1 %exitcond23, label %for.end29, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond8
  %arrayidx17 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv18
  br label %for.cond12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv13 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next14, %for.body15 ]
  %n.1 = phi i32 [ %n.0, %for.cond12.preheader ], [ %spec.select, %for.body15 ]
  %exitcond = icmp eq i64 %indvars.iv13, %wide.trip.count22
  br i1 %exitcond, label %for.inc27, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !21
  %mul = shl nsw i32 %3, 1
  %arrayidx19 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv13
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !21
  %cmp20 = icmp eq i32 %mul, %4
  %inc22 = zext i1 %cmp20 to i32
  %spec.select = add nsw i32 %n.1, %inc22
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond12, !llvm.loop !25

for.inc27:                                        ; preds = %for.cond12
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond8, !llvm.loop !26

for.end29:                                        ; preds = %for.cond8
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.0)
  %vtable.i = load ptr, ptr %call30, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call30, i64 %vbase.offset.i
  %call.i10 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call30, i8 noundef signext %call.i10)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!9, !13, i64 32}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!17, !17, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = distinct !{!26, !23, !24}
!27 = distinct !{!27, !23, !24}
