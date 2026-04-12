; ModuleID = '<stdin>'
source_filename = "/tmp/tmppr6ha3b9.cpp"
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %indvars.iv25 = phi i32 [ -1, %entry ], [ %indvars.iv25.be, %while.cond.backedge ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %while.cond.backedge ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !21
  switch i32 %1, label %if.else [
    i32 0, label %while.end
    i32 -1, label %while.end
  ]

if.else:                                          ; preds = %while.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next26 = add nsw i32 %indvars.iv25, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %for.end35
  %indvars.iv25.be = phi i32 [ %indvars.iv.next26, %if.else ], [ -1, %for.end35 ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %for.end35 ]
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.body, %while.body, %while.cond
  %2 = load i32, ptr %a, align 16, !tbaa !21
  %cmp8 = icmp eq i32 %2, -1
  br i1 %cmp8, label %for.end40, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %while.end
  %3 = and i64 %indvars.iv, 4294967295
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv25, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.cond11.loopexit:                              ; preds = %for.cond13
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond11, !llvm.loop !25

for.cond11:                                       ; preds = %for.cond11.loopexit, %for.cond11.preheader
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.cond11.loopexit ], [ 0, %for.cond11.preheader ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.cond11.loopexit ], [ 1, %for.cond11.preheader ]
  %n.0 = phi i32 [ %n.1, %for.cond11.loopexit ], [ 0, %for.cond11.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond.not, label %for.end35, label %for.body

for.body:                                         ; preds = %for.cond11
  %arrayidx20 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv22
  br label %for.cond13

for.cond13:                                       ; preds = %for.body16, %for.body
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body16 ], [ %indvars.iv17, %for.body ]
  %n.1 = phi i32 [ %n.2, %for.body16 ], [ %n.0, %for.body ]
  %cmp15.not.not = icmp samesign ult i64 %indvars.iv19, %3
  br i1 %cmp15.not.not, label %for.body16, label %for.cond11.loopexit

for.body16:                                       ; preds = %for.cond13
  %arrayidx18 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !21
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !21
  %mul = shl nsw i32 %5, 1
  %cmp21 = icmp eq i32 %4, %mul
  %mul27 = shl nsw i32 %4, 1
  %cmp28 = icmp eq i32 %5, %mul27
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp28
  %inc30 = zext i1 %or.cond to i32
  %n.2 = add nsw i32 %n.1, %inc30
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond13, !llvm.loop !26

for.end35:                                        ; preds = %for.cond11
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.0)
  %vtable.i = load ptr, ptr %call36, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call36, i64 %vbase.offset.i
  %call.i15 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call36, i8 noundef signext %call.i15)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond.backedge

for.end40:                                        ; preds = %while.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
