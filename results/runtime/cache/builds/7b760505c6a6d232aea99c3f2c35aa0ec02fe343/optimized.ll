; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9r83vc4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [10000 x i8], align 16
  %b = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef align 16 %str) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %str, i8 noundef 0, i64 noundef 10000, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400000, ptr noundef align 16 %b) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %m.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %m.0 to i64
  %arrayidx = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %inc = add nsw i32 %m.0, 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %j.0 = phi i32 [ 0, %while.end ], [ %j.1, %for.inc ]
  %i.0 = phi i32 [ 0, %while.end ], [ %inc14, %for.inc ]
  %cmp2 = icmp slt i32 %i.0, %m.0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom3
  %0 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %conv5 = sext i8 %0 to i32
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %sub = sub nsw i32 %i.0, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom7
  %1 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %conv9 = sext i8 %1 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 %i.0, ptr %arrayidx12, align 4, !tbaa !11
  %inc13 = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %j.1 = phi i32 [ %inc13, %if.then ], [ %j.0, %land.lhs.true ], [ %j.0, %for.body ]
  %inc14 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc35, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ]
  %cmp16 = icmp slt i32 %i.1, %m.0
  br i1 %cmp16, label %for.body17, label %for.end37

for.body17:                                       ; preds = %for.cond15
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.body17
  %k.0 = phi i32 [ 0, %for.body17 ], [ %inc27, %for.inc26 ]
  %sum.0 = phi i32 [ 0, %for.body17 ], [ %add, %for.inc26 ]
  %cmp19 = icmp slt i32 %k.0, %j.0
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %idxprom21 = sext i32 %k.0 to i64
  %arrayidx22 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom21
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !11
  %cmp23 = icmp ne i32 %i.1, %2
  br i1 %cmp23, label %for.inc26, label %if.else

if.else:                                          ; preds = %for.body20
  br label %for.inc26

for.inc26:                                        ; preds = %if.else, %for.body20
  %s.0 = phi i32 [ 1, %if.else ], [ 0, %for.body20 ]
  %add = add nsw i32 %s.0, %sum.0
  %inc27 = add nsw i32 %k.0, 1
  br label %for.cond18, !llvm.loop !14

for.end28:                                        ; preds = %for.cond18
  %cmp29 = icmp eq i32 %sum.0, 0
  br i1 %cmp29, label %if.then30, label %for.inc35

if.then30:                                        ; preds = %for.end28
  %idxprom31 = sext i32 %i.1 to i64
  %arrayidx32 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom31
  %3 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %3)
  br label %for.inc35

for.inc35:                                        ; preds = %for.end28, %if.then30
  %inc36 = add nsw i32 %i.1, 1
  br label %for.cond15, !llvm.loop !15

for.end37:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 400000, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %str) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
